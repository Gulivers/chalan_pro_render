<template>
  <div class="card shadow mb-4">
    <div class="card-header d-flex justify-content-between align-items-center">
      <h6 class="text-primary mb-0">Product Brands</h6>
      <button class="btn btn-success" @click="goToCreateForm">
        <strong>+</strong> New Brand
      </button>
    </div>

    <div class="card-body">
      <!-- Loading state -->
      <div v-if="isBusy" class="text-center py-3">
        <div class="spinner-border text-primary" role="status">
          <span class="visually-hidden">Loading...</span>
        </div>
        <div class="mt-2">Loading Brands...</div>
      </div>

      <!-- Table with Bootstrap Vue Next -->
      <div v-else-if="items.length > 0" class="table-responsive">
        <b-table
          :items="items"
          :fields="fields"
          :per-page="perPage"
          :current-page="currentPage"
          striped
          hover
          responsive
          :sort-by="sortBy"
          :sort-desc="sortDesc"
          @sort-changed="onSortChanged"
          class="table-bordered"
        >
          <!-- ID column -->
          <template #cell(id)="row">
            <strong>{{ row.item.id }}</strong>
          </template>

          <!-- Name column -->
          <template #cell(name)="row">
            <div class="text-start">
              <span class="fw-medium">{{ row.item.name }}</span>
            </div>
          </template>

          <!-- Active column -->
          <template #cell(is_active)="row">
            <span class="badge" :class="row.item.is_active ? 'bg-success' : 'bg-secondary'">
              {{ row.item.is_active ? 'Active' : 'Inactive' }}
            </span>
          </template>

          <!-- Default column -->
          <template #cell(is_default)="row">
            <span class="badge" :class="row.item.is_default ? 'bg-primary' : 'bg-light text-dark'">
              {{ row.item.is_default ? 'Default' : '—' }}
            </span>
          </template>

          <!-- Actions column -->
          <template #cell(actions)="row">
            <div class="btn-group btn-group-sm">
              <button class="btn btn-outline-success me-1" @click="viewItem(row.item.id)">
                <i class="fas fa-eye"></i>
              </button>
              <button class="btn btn-outline-primary me-1" @click="editItem(row.item.id)">
                <i class="fas fa-edit"></i>
              </button>
              <button
                class="btn btn-outline-danger"
                @click="confirmDelete(row.item.id)"
                :disabled="deletingId === row.item.id"
              >
                <span
                  v-if="deletingId === row.item.id"
                  class="spinner-border spinner-border-sm me-1"
                  role="status"
                  aria-hidden="true"
                ></span>
                <i class="fas fa-trash"></i>
              </button>
            </div>
          </template>
        </b-table>

        <!-- Pagination -->
        <div class="d-flex justify-content-between align-items-center mt-3">
          <div class="d-flex align-items-center gap-2">
            <label class="form-label mb-0 small">Entries per page:</label>
            <select v-model.number="perPage" class="form-select form-select-sm" style="width: auto;">
              <option :value="10">10</option>
              <option :value="25">25</option>
              <option :value="50">50</option>
              <option :value="100">100</option>
            </select>
            <span class="text-muted small">
              Showing {{ (currentPage - 1) * perPage + 1 }} to 
              {{ Math.min(currentPage * perPage, items.length) }} of 
              {{ items.length }} entries
            </span>
          </div>
          
          <b-pagination
            v-model="currentPage"
            :total-rows="items.length"
            :per-page="perPage"
            size="sm"
            class="mb-0"
          ></b-pagination>
        </div>
      </div>

      <!-- Empty state -->
      <div v-else class="text-muted text-center py-5">
        <i class="fas fa-tags fa-3x mb-3 text-muted"></i>
        <h5>No brands found</h5>
        <p class="mb-0">Start by creating your first product brand.</p>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
import Swal from 'sweetalert2'

export default {
  name: 'ProductBrandView',
  data() {
    return {
      items: [],
      isBusy: false,
      deletingId: null,
      
      // Table configuration
      perPage: 25,
      currentPage: 1,
      sortBy: 'id',
      sortDesc: true,
      
      // Table fields
      fields: [
        { key: 'id', label: 'ID', sortable: true, thClass: 'text-center', tdClass: 'text-center' },
        { key: 'name', label: 'Name', sortable: true, thClass: 'text-start' },
        { key: 'is_active', label: 'Active', sortable: true, thClass: 'text-center', tdClass: 'text-center' },
        { key: 'is_default', label: 'Default', sortable: true, thClass: 'text-center', tdClass: 'text-center' },
        { key: 'actions', label: 'Actions', sortable: false, thClass: 'text-center', tdClass: 'text-center' }
      ]
    }
  },
  mounted() {
    this.fetchItems()
  },
  methods: {
    async fetchItems() {
      this.isBusy = true
      try {
        const response = await axios.get('/api/productbrand/')
        this.items = Array.isArray(response.data) ? response.data : []
      } catch (error) {
        console.error('Error loading brands:', error)
        this.items = []
      } finally {
        this.isBusy = false
      }
    },

    onSortChanged(ctx) {
      this.sortBy = ctx.sortBy
      this.sortDesc = ctx.sortDesc
      
      // Apply sorting directly to items
      this.items.sort((a, b) => {
        let aVal = a[this.sortBy]
        let bVal = b[this.sortBy]
        
        // Handle null/undefined values
        if (aVal == null) aVal = ''
        if (bVal == null) bVal = ''
        
        // Convert to string for comparison
        aVal = String(aVal).toLowerCase()
        bVal = String(bVal).toLowerCase()
        
        if (aVal < bVal) return this.sortDesc ? 1 : -1
        if (aVal > bVal) return this.sortDesc ? -1 : 1
        return 0
      })
    },

    goToCreateForm() {
      this.$router.push({ name: 'product-brand-form' })
    },

    viewItem(id) {
      this.$router.push({ name: 'product-brand-view', params: { id } })
    },

    editItem(id) {
      this.$router.push({ name: 'product-brand-edit', params: { id } })
    },

    async confirmDelete(id) {
      const result = await Swal.fire({
        title: 'Delete?',
        text: 'This will delete the product brand. This action cannot be undone.',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Yes, delete',
        cancelButtonText: 'Cancel',
      })
      if (!result.isConfirmed) return
      await this.deleteItem(id)
    },

    async deleteItem(id) {
      this.deletingId = id
      try {
        await axios.delete(`/api/productbrand/${id}/`)
        
        // Remove item from local array
        this.items = this.items.filter(b => b.id !== id)
        
        // Show success message
        if (this.notifyToastSuccess) {
          this.notifyToastSuccess('The product brand has been deleted.')
        }
      } catch (error) {
        console.error('Error deleting product brand:', error)
        const { status } = error?.response || {}
        
        if (status === 403) {
          await Swal.fire('Forbidden', 'You do not have permission for this action.', 'error')
        } else {
          await Swal.fire('Oops!', 'Error deleting the product brand.', 'error')
        }
      } finally {
        this.deletingId = null
      }
    },
  },
}
</script>

<style scoped>
.table td { vertical-align: middle; }
.badge.fs-6 { font-size: 0.875rem !important; padding: 0.5rem 0.75rem; }
:deep(.b-table) { font-size: 0.9rem; }
:deep(.b-table th) { background-color: #f8f9fa; border-bottom: 2px solid #dee2e6; font-weight: 600; color: #495057; }
:deep(.b-table td) { border-bottom: 1px solid #dee2e6; }
:deep(.b-table tbody tr:hover) { background-color: #f8f9fa; }
:deep(.b-pagination .page-link) { color: #007bff; border-color: #dee2e6; }
:deep(.b-pagination .page-item.active .page-link) { background-color: #007bff; border-color: #007bff; }
.spinner-border { width: 3rem; height: 3rem; }
.btn-group-sm .btn { padding: 0.25rem 0.5rem; font-size: 0.8rem; }
.fa-tags { opacity: 0.3; }
@media (max-width: 768px) {
  .badge.fs-6 { font-size: 0.75rem !important; padding: 0.375rem 0.5rem; }
  :deep(.b-table) { font-size: 0.8rem; }
  .btn-group-sm .btn { padding: 0.2rem 0.4rem; font-size: 0.75rem; }
}
.form-select-sm { font-size: 0.875rem; padding: 0.25rem 0.5rem; }
.text-muted.small { font-size: 0.8rem; }
</style>

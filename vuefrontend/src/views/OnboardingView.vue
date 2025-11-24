<template>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-xl-8 col-lg-10 col-md-12">
        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-header bg-primary text-white">
            <h4 class="mb-0 text-center">
              <i class="fas fa-building me-2"></i>
              Create Your Account
            </h4>
            <p class="text-center mb-0 mt-2" style="font-size: 0.9rem; opacity: 0.9;">
              Set up your personalized environment in minutes
            </p>
          </div>
          
          <div class="card-body p-5">
            <form @submit.prevent="handleSubmit" novalidate>
              <!-- Business Name -->
              <div class="row mb-4">
                <div class="col-md-3">
                  <label for="company_name" class="form-label fw-bold mb-0 d-flex align-items-center h-100">
                    Business Name <span class="text-danger ms-1">*</span>
                  </label>
                </div>
                <div class="col-md-9">
                  <input
                    id="company_name"
                    v-model.trim="form.company_name"
                    type="text"
                    class="form-control form-control-lg"
                    :class="{ 'is-invalid': errors.company_name }"
                    placeholder="e.g., Phoenix Electric & Air"
                    required
                    maxlength="100"
                    v-tt
                    data-title="This will be the name displayed in your system"
                  />
                  <div v-if="errors.company_name" class="invalid-feedback d-block">
                    {{ errors.company_name }}
                  </div>
                </div>
              </div>

              <!-- Email Address -->
              <div class="row mb-4">
                <div class="col-md-3">
                  <label for="email" class="form-label fw-bold mb-0 d-flex align-items-center h-100">
                    Email Address <span class="text-danger ms-1">*</span>
                  </label>
                </div>
                <div class="col-md-9">
                  <input
                    id="email"
                    v-model.trim="form.email"
                    type="email"
                    class="form-control form-control-lg"
                    :class="{ 'is-invalid': errors.email }"
                    placeholder="your-email@example.com"
                    required
                    v-tt
                    data-title="We'll use this email for important notifications"
                  />
                  <div v-if="errors.email" class="invalid-feedback d-block">
                    {{ errors.email }}
                  </div>
                </div>
              </div>

              <!-- Business Type -->
              <div class="row mb-4">
                <div class="col-md-3">
                  <label for="client_type" class="form-label fw-bold mb-0 d-flex align-items-center h-100">
                    Business Type <span class="text-danger ms-1">*</span>
                  </label>
                </div>
                <div class="col-md-9">
                  <select
                    id="client_type"
                    v-model="form.client_type"
                    class="form-select form-select-lg"
                    :class="{ 'is-invalid': errors.client_type }"
                    required
                    v-tt
                    data-title="This helps us personalize your experience"
                  >
                    <option value="">Select business type</option>
                    <option value="electric">Electric</option>
                    <option value="air_conditioning">Air Conditioning</option>
                    <option value="solar">Solar</option>
                    <option value="plumbing">Plumbing</option>
                    <option value="hvac">HVAC (Heating, Ventilation, Air Conditioning)</option>
                    <option value="general">General (Other)</option>
                  </select>
                  <div v-if="errors.client_type" class="invalid-feedback d-block">
                    {{ errors.client_type }}
                  </div>
                </div>
              </div>

              <!-- Company Logo -->
              <div class="row mb-4">
                <div class="col-md-3">
                  <label for="logo" class="form-label fw-bold mb-0 d-flex align-items-center h-100">
                    Company Logo
                  </label>
                </div>
                <div class="col-md-9">
                  <input
                    id="logo"
                    type="file"
                    class="form-control form-control-lg"
                    :class="{ 'is-invalid': errors.logo }"
                    accept="image/*"
                    @change="handleFileChange"
                    v-tt
                    data-title="Accepted formats: PNG, JPG, GIF (max. 5MB)"
                  />
                  <div v-if="errors.logo" class="invalid-feedback d-block">
                    {{ errors.logo }}
                  </div>
                  
                  <!-- Logo preview -->
                  <div v-if="logoPreview" class="mt-3">
                    <img
                      :src="logoPreview"
                      alt="Logo preview"
                      class="img-thumbnail"
                      style="max-width: 200px; max-height: 200px;"
                    />
                  </div>
                </div>
              </div>

              <!-- General Error Message -->
              <div v-if="errorMessage" class="alert alert-danger" role="alert">
                <i class="fas fa-exclamation-triangle me-2"></i>
                {{ errorMessage }}
              </div>

              <!-- Success Message -->
              <div v-if="successMessage" class="alert alert-success" role="alert">
                <i class="fas fa-check-circle me-2"></i>
                {{ successMessage }}
              </div>

              <!-- Buttons -->
              <div class="row mt-4">
                <div class="col-md-9 offset-md-3">
                  <div class="d-grid gap-2">
                    <button
                      type="submit"
                      class="btn btn-primary btn-lg"
                      :disabled="isSubmitting || isSuccess"
                    >
                      <span v-if="isSubmitting" class="spinner-border spinner-border-sm me-2" role="status" aria-hidden="true"></span>
                      <i v-else class="fas fa-rocket me-2"></i>
                      <span v-if="isSubmitting">Creating your environment...</span>
                      <span v-else-if="isSuccess">Redirecting...</span>
                      <span v-else>Create My Account</span>
                    </button>
                    
                    <button
                      type="button"
                      class="btn btn-outline-secondary"
                      @click="resetForm"
                      :disabled="isSubmitting"
                    >
                      Clear Form
                    </button>
                  </div>
                </div>
              </div>
            </form>
          </div>

          <!-- Footer -->
          <div class="card-footer bg-light text-center py-3">
            <small class="text-muted">
              By creating your account, you agree to our terms and conditions.
              <br>
              The process may take 2 to 5 minutes.
            </small>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { ref, reactive } from 'vue'
import { useRouter } from 'vue-router'
import axios from 'axios'

export default {
  name: 'OnboardingView',
  setup() {
    const router = useRouter()
    
    const form = reactive({
      company_name: '',
      email: '',
      client_type: '',
      logo: null
    })
    
    const errors = reactive({})
    const errorMessage = ref('')
    const successMessage = ref('')
    const isSubmitting = ref(false)
    const isSuccess = ref(false)
    const logoPreview = ref(null)

    const validateForm = () => {
      // Clear previous errors
      Object.keys(errors).forEach(key => delete errors[key])
      errorMessage.value = ''

      let isValid = true

      // Validate business name
      if (!form.company_name || form.company_name.trim().length < 3) {
        errors.company_name = 'Business name must be at least 3 characters long'
        isValid = false
      }

      // Validate email
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
      if (!form.email || !emailRegex.test(form.email)) {
        errors.email = 'Please enter a valid email address'
        isValid = false
      }

      // Validate business type
      if (!form.client_type) {
        errors.client_type = 'Please select a business type'
        isValid = false
      }

      // Validate logo (if provided)
      if (form.logo) {
        const maxSize = 5 * 1024 * 1024 // 5MB
        if (form.logo.size > maxSize) {
          errors.logo = 'Logo must not exceed 5MB'
          isValid = false
        }
        
        const allowedTypes = ['image/png', 'image/jpeg', 'image/jpg', 'image/gif']
        if (!allowedTypes.includes(form.logo.type)) {
          errors.logo = 'Logo must be an image (PNG, JPG, GIF)'
          isValid = false
        }
      }

      return isValid
    }

    const handleFileChange = (event) => {
      const file = event.target.files[0]
      if (file) {
        form.logo = file
        
        // Crear preview
        const reader = new FileReader()
        reader.onload = (e) => {
          logoPreview.value = e.target.result
        }
        reader.readAsDataURL(file)
      } else {
        form.logo = null
        logoPreview.value = null
      }
    }

    const handleSubmit = async () => {
      if (!validateForm()) {
        return
      }

      isSubmitting.value = true
      errorMessage.value = ''
      successMessage.value = ''

      try {
        // Create FormData to send the file
        const formData = new FormData()
        formData.append('company_name', form.company_name)
        formData.append('email', form.email)
        formData.append('client_type', form.client_type)
        
        if (form.logo) {
          formData.append('logo', form.logo)
        }

        // Send request to backend
        const response = await axios.post('/api/onboarding/create-tenant/', formData, {
          headers: {
            'Content-Type': 'multipart/form-data'
          },
          timeout: 300000 // 5 minutes timeout
        })

        if (response.data && response.data.success) {
          isSuccess.value = true
          successMessage.value = response.data.message || 'Your account has been created successfully!'
          
          // Redirect to tenant domain after 3 seconds
          setTimeout(() => {
            if (response.data.url) {
              // Redirect to the new tenant's domain
              window.location.href = response.data.url
            } else {
              // Fallback: redirect to home
              router.push('/')
            }
          }, 3000)
        } else {
          throw new Error(response.data.error || 'Unknown error creating account')
        }
      } catch (error) {
        console.error('Error creating tenant:', error)
        
        if (error.response) {
          // Server response error
          if (error.response.data && error.response.data.error) {
            errorMessage.value = error.response.data.error
          } else if (error.response.data && error.response.data.details) {
            // Show detailed validation errors
            const details = error.response.data.details
            Object.keys(details).forEach(key => {
              if (details[key] && Array.isArray(details[key])) {
                errors[key] = details[key][0]
              }
            })
            errorMessage.value = 'Please correct the errors in the form'
          } else {
            errorMessage.value = `Server error: ${error.response.status} ${error.response.statusText}`
          }
        } else if (error.request) {
          // Network error
          errorMessage.value = 'Could not connect to server. Please check your internet connection.'
        } else if (error.code === 'ECONNABORTED') {
          // Timeout
          errorMessage.value = 'The request is taking longer than expected. Please try again.'
        } else {
          // Other error
          errorMessage.value = error.message || 'An unexpected error occurred. Please try again.'
        }
      } finally {
        isSubmitting.value = false
      }
    }

    const resetForm = () => {
      form.company_name = ''
      form.email = ''
      form.client_type = ''
      form.logo = null
      logoPreview.value = null
      Object.keys(errors).forEach(key => delete errors[key])
      errorMessage.value = ''
      successMessage.value = ''
      isSuccess.value = false
    }

    return {
      form,
      errors,
      errorMessage,
      successMessage,
      isSubmitting,
      isSuccess,
      logoPreview,
      handleFileChange,
      handleSubmit,
      resetForm
    }
  }
}
</script>

<style scoped>
.bg-login-image {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  display: flex;
  align-items: center;
  justify-content: center;
}

.card {
  border-radius: 10px;
}

.form-control-lg,
.form-select-lg {
  padding: 0.75rem 1rem;
  font-size: 1rem;
}

.btn-lg {
  padding: 0.75rem 1.5rem;
  font-size: 1.1rem;
}

.img-thumbnail {
  border: 2px solid #dee2e6;
  border-radius: 8px;
  padding: 5px;
}
</style>


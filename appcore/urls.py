"""
URLs para appcore - Multi-tenant Onboarding
"""
from django.urls import path
from .views import CreateTenantView, TenantInfoView

app_name = 'appcore'

urlpatterns = [
    path('api/onboarding/create-tenant/', CreateTenantView.as_view(), name='create-tenant'),
    path('api/onboarding/tenant-info/', TenantInfoView.as_view(), name='tenant-info'),
]


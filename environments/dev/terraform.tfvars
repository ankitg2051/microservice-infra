infra_config = {
  resource_groups = {
    "ankit-micro-dev" = {
      location = "East Asia"
      tags     = { Environment = "Dev", ManagedBy = "Terraform" }
    }
  }
  container_registries = {
    "acrmicrodev1121" = {
      rg_key = "ankit-micro-dev"
      sku    = "Basic"
    }
  }
  kubernetes_clusters = {
    "ankit-micro-dev-aks" = {
      rg_key     = "ankit-micro-dev"
      dns_prefix = "aksmicrodev"
      default_node_pool = {
        name       = "default"
        node_count = 1
        vm_size    = "Standard_B2s_v2"
      }
    }
  }
}

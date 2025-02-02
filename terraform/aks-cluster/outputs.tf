output "id" {
  value = (
    length(azurerm_kubernetes_cluster.adl_aks) > 0 ?
    azurerm_kubernetes_cluster.adl_aks[0].id : ""
  )
}

output "name" {
  value = (
    length(azurerm_kubernetes_cluster.adl_aks) > 0 ?
    azurerm_kubernetes_cluster.adl_aks[0].name : ""
  )
}

output "resource_group_name" {
  value = (
    length(azurerm_kubernetes_cluster.adl_aks) > 0 ?
    azurerm_kubernetes_cluster.adl_aks[0].resource_group_name : ""
  )
}

output "all" {
  value = (
    length(azurerm_kubernetes_cluster.adl_aks) > 0 ?
    azurerm_kubernetes_cluster.adl_aks[0] : null
  )
  sensitive = true
}
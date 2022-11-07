variable "basename" {
  type        = string
  description = "Basename of the module"
}

variable "rg_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Location of the resource group"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A mapping of tags which should be assigned to the deployed resource"
}

variable "cluster_version" {
  type        = string
  description = "Specifies the Version of HDInsights which should be used for this Cluster"
}

variable "component_version_spark" {
  type        = string
  description = "The version of Spark which should be used for this HDInsight Spark Cluster"
}

variable "gateway_username" {
  type        = string
  description = "The username used for the Ambari Portal"
}

variable "gateway_password" {
  type        = string
  description = "The password used for the Ambari Portal"
  sensitive   = true
}

variable "ssh_username" {
  type        = string
  description = "The username used for the ssh"
}

variable "ssh_password" {
  type        = string
  description = "The password used for the ssh"
}

variable "roles_head_node_vm_size" {
  type        = string
  description = "The Size of the Virtual Machine which should be used as the Head Nodes"
}

variable "roles_worker_node_number_of_disks_per_node" {
  type        = number
  description = "The number of Data Disks which should be assigned to each Worker Node"
  default     = 1
}

variable "roles_worker_node_vm_size" {
  type        = string
  description = "The Size of the Virtual Machine which should be used as the Worker Nodes"
}

variable "roles_worker_node_target_instance_count" {
  type        = number
  description = "The number of instances which should be run for the Worker Nodes"
}

variable "roles_zookeeper_node_vm_size" {
  type        = string
  description = "The Size of the Virtual Machine which should be used as the Zookeeper Nodes"
}

variable "storage_account_is_default" {
  type        = bool
  description = "Is this the Default Storage Account for the HDInsight Cluster?"
  default     = true
}

variable "tier" {
  type        = string
  description = "Specifies the Tier which should be used for this HDInsight Cluster"
}

variable "metastore_sku" {
  type        = map(any)
  description = "SKUs to be used for each metastore"
  default = {
    ambari = "S0"
    hive   = "S0"
    oozie  = "S0"
  }
}

# variable "autoscale_schedules" {
#   type = list(object({
#     days                  = list(string)
#     time                  = string
#     target_instance_count = number
#   }))
# }
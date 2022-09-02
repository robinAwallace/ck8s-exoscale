prefix = "set-me-sc"
zone   = "ch-gva-2"

inventory_file = "inventory.ini"

ssh_public_keys = [
  "set-me",
]

machines = {
  "master-0" : {
    "node_type" : "master",
    "size" : "Medium",
    "boot_disk" : {
      "image_name" : "Linux Ubuntu 20.04 LTS 64-bit",
      "root_partition_size" : 50,
      "node_local_partition_size" : 0,
      "ceph_partition_size" : 0
    }
  },
  "master-1" : {
    "node_type" : "master",
    "size" : "Medium",
    "boot_disk" : {
      "image_name" : "Linux Ubuntu 20.04 LTS 64-bit",
      "root_partition_size" : 50,
      "node_local_partition_size" : 0,
      "ceph_partition_size" : 0
    }
  },
  "master-2" : {
    "node_type" : "master",
    "size" : "Medium",
    "boot_disk" : {
      "image_name" : "Linux Ubuntu 20.04 LTS 64-bit",
      "root_partition_size" : 50,
      "node_local_partition_size" : 0,
      "ceph_partition_size" : 0
    }
  },
  "worker-0" : {
    "node_type" : "worker",
    "size" : "Large",
    "boot_disk" : {
      "image_name" : "Linux Ubuntu 20.04 LTS 64-bit",
      "root_partition_size" : 50,
      "node_local_partition_size" : 0,
      "ceph_partition_size" : 100
    }
  },
  "worker-1" : {
    "node_type" : "worker",
    "size" : "Large",
    "boot_disk" : {
      "image_name" : "Linux Ubuntu 20.04 LTS 64-bit",
      "root_partition_size" : 50,
      "node_local_partition_size" : 0,
      "ceph_partition_size" : 100
    }
  },
  "worker-2" : {
    "node_type" : "worker",
    "size" : "Large",
    "boot_disk" : {
      "image_name" : "Linux Ubuntu 20.04 LTS 64-bit",
      "root_partition_size" : 50,
      "node_local_partition_size" : 0,
      "ceph_partition_size" : 100
    }
  },
  "worker-3" : {
    "node_type" : "worker",
    "size" : "extra-large",
    "boot_disk" : {
      "image_name" : "Linux Ubuntu 20.04 LTS 64-bit",
      "root_partition_size" : 50,
      "node_local_partition_size" : 0,
      "ceph_partition_size" : 0
    }
  },
  "worker-4" : {
    "node_type" : "worker",
    "size" : "extra-large",
    "boot_disk" : {
      "image_name" : "Linux Ubuntu 20.04 LTS 64-bit",
      "root_partition_size" : 50,
      "node_local_partition_size" : 0,
      "ceph_partition_size" : 0
    }
  }
}

nodeport_whitelist = [
  "0.0.0.0/0"
]

ssh_whitelist = [
  "0.0.0.0/0"
]

api_server_whitelist = [
  "0.0.0.0/0"
]

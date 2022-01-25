provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "kubernetes_namespace" "minikube-1-namespace" {
  metadata {
        name = "my-first-terraform-namespace"
  }
}


resource "helm_release" "local" {
  name          = "buildachart"
  chart         = "./buildachart"
}

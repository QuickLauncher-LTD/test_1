job my_sample_app_qz5kzika {

  datacenters = ["dc1"]
  group "quick-launcher" {
    count = 1
    network {
      mode = "bridge"
      port "http" {
        static = 21212
        to = 80
      }
    }

    service {
      name = "demo-quicklauncher"
      port = "http"

      check {
        type     = "http"
        path     = "/"
        interval = "2s"
        timeout  = "2s"
      }
    }
    task "server" {
      driver = "docker"

      config {
        image = "868771833856.dkr.ecr.ap-northeast-2.amazonaws.com/my_sample_app_qz5kzika:latest"
        ports = ["http"]
      }
    }
  }
}


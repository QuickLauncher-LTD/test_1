project = "my_sample_app_qz5kzika"

app "my_sample_app_qz5kzika" {
  build {
    use "pack" {
      builder = "gcr.io/buildpacks/builder:v1"
    }
    registry {
      use "docker" {
        image = "868771833856.dkr.ecr.ap-northeast-2.amazonaws.com/my_sample_app_qz5kzika"
        tag   = "latest"
      }
    }
  }
  deploy {
    use "docker" {
    }
  }
}



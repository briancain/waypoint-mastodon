project = "waypoint-mastodon"
app "mastodon" {
  build {
    use "docker-ref" {
      tag = "latest"
      //The following field was skipped during file generation
      image = ""
    }
    registry {
      use "docker" {
        tag = "latest"
        //The following field was skipped during file generation
        image = ""
      }
    }
  }
  deploy {
    use "helm" {
    }
  }
  release {
    use "kubernetes" {
      ingress {
      }
    }
  }
}

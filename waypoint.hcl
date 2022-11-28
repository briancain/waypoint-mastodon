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
      name  = app.name
      chart = "${path.app}/chart"

      // We use a values file so we can set the entrypoint environment
      // variables into a rich YAML structure. This is easier than --set
      values = [
        file(templatefile("${path.app}/values.yaml.tpl")),
      ]

    }
  }
  release {
    use "kubernetes" {
      ingress {
      }
    }
  }
}

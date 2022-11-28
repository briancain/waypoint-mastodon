# Deploy Mastodon With Waypoint

## Setup

### Using Terraform to create an EKS Cluster

- https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks

Connect your local kubectl to the EKS cluster

### Setup Waypoint

You know what to do

### Populate credentials for Mastodon Helm Chart

Generating Vapid keys

```
npm install web-push -g
web-push generate-vapid-keys
```

Set secrets in `values.yml` (or in vault?!)

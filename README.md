# ABOUT

Hi there!! 👋

This repo is a Cloud Native Serverless Workshop repository 

## INSTALLATION

### Prerequisites  📋

We recomend to install the following tooling: 

* [Brew]

* [Makefile]

* [Docker and Docker-Compose]

* [Kubernetes]

* [Kubectl]

* [Helm]

* [Lens]


**Install Brew if needed** 

```shell script
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Install Git if needed** 

```shell script
   brew install git
```

**Install Make if needed** 

```shell script
   brew install make
```

### Install the tooling  🛠️

CLONE THE REPO  
   
   ```sh
    git clone https://github.com/erasmodominguezdc/cloudnative-serverless-workshops
    cd cloudnative-serverless-workshops
    make haking
   ```
   
CHECKING THE COMMANDS  

   ```sh
     make help
   ```

HACK YOUR ENVIRONMENT 

 ```sh
     make hacking
   ```

**Note:** For now the installation scripts are only for mac os. We are working on providing installers for other distributions


### Deploying a Kubernetes Cluster ⚙️

Ok!!! if you have Docker desktop and a Kubernetes Cluster locally, you can skip this point.If not, please still reading :D 

There are many way to deploy a Kubernetes cluster locally. We are using two of then:
 
 1. Docker Desktop Kubernetes capabilities. [Enable Kubenetes](https://docs.docker.com/desktop/kubernetes/) 
 2. [Kind](https://kind.sigs.k8s.io)
 
 For kind lovers, we provide a mechanism to deploy a Kind cluster locally, just run: 
 
 ```sh
    make create-cluster 
```
 
## WORKSHOPS 

Please, take a look tho the

[WORKSHOPS](workshops/README.md)

## REFERENCES 

## ROADMAP & IMPROVEMENTS  🚀

### Commons

❌ install_requirements.sh script. Add installation for Linux and Windows distro. 

🚧  Makefile which must provide a automate way to install and configure environments, as well as run the different DEMOS.

✅  Observability based on prometheus, Grafana etc for the different workshops.

🚧  Create configuration to deploy with serverless framework

### Knative


❌  Service Mesh Configuration. Using Kourier but add the Istio option.

❌  Eventing Configuration. Using Kourier but add the Kafka option.

🚧  Customize the service.yaml file. Setting params line concurrency etc.

### Kubeless 

### Nice to have 

❌  OpenTelemetry configuration for the services. Pending to define the scope


### Issues 

See the [open issues](https://github.com/erasmolpa/serverless-workshop/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc) for a list of proposed features (and known issues).


## CONTRIBUTING 🖇️

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## VERSIONING 📌

This project use [Semantic Versioning](https://semver.org/lang/es/)


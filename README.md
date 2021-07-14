# ABOUT

Hi there!! 👋

This repo is a Cloud Native Serverless Workshop repository 

# NATIVE SERVERLESS WORKSHOPS SERIES

## Workshop-1 INTRO KNATIVE SERVING
   * Intro explaining the Project  
      * Makefile 
      * Tooling , environment
   * Intro serverless.
          * About serverless. Definition
          * Cloud native Serverless solutions (For now Kubeless and Knative)
   * Intro explaining the repo  
   * Intro Knative architecture driven by demo (Knative helloworld serving)

## Workshop-2 OBSERVABILITY PART I
   * What is observability in short words 
   * Serverless observability patterns and stacks 
   * Intro Knative Observability Architecture
   * Demo Knative Observability
   
## Workshop-3 DEPLOYMENT STRATEGIES PAR I
   * Serverless Deployment Patterns 
   * Knative deployments 
     * Playing with versions
     * Blue-Green Deployment
     * Canary Deployment
     
## Workshop-4 KNATIVE EVENTING PAR I
   * Serverless Deployment Patterns 
   * Knative deployments 
     * Playing with versions
     * Blue-Green Deployment
     * Canary Deployment 
# NATIVE SERVERLESS CHAT SERIES
  * Deep Dive into Serverless Concepts
    * History
    * All serverless implementations are ?
     
  * Mapping Architecture. Serverless into Kubernetes How Do they Do ? 

## This project was built  🛠️

* [Makefile]
* [Docker and Docker-Compose]
* [Kind]
* [Kubectl]
* [Helm]
* [Lens]

## Prerequisites  📋

If you want to work on this project, you will need:

* HomeBrew
* Go
* Make  
* Bash
* Docker Desktop 
* Helm 
* Kubectl

**Note:** 

The minimal requirements are brew and make. 

Installing brew 

```shell script
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Installing the tooling ⚙️

CLONE THE REPO  
   
   ```sh
   git clone https://github.com/erasmodominguezdc/cloudnative-serverless-workshops
   ```
   
CHECKING THE COMMANDS  

   ```sh
     make help
   ```

HACK YOUR ENVIRONMENT 

 ```sh
     make hacking
   ```

### Deploying a Kubernetes Cluster 

Ok!!! if you have Docker desktop and a Kubernetes Cluster locally, you can skip this point.If not, please still reading :D 

There are many way to deploy a Kubernetes cluster locally. We are using two of then:
 1. Docker Desktop Kubernetes capabilities. [Enable Kubenetes](https://docs.docker.com/desktop/kubernetes/) 
 2. [Kind](https://kind.sigs.k8s.io)
 
 For kind lovers, we provide a mechanism to deploy a Kind cluster locally, just run: 
 
 ```sh
    make create-cluster 
```
 
## WORKSHOPS 

### Build 🔧


### Run 🚀

### Knative
 
You can run the following make command to deploy locally:

**helm install**
  ```sh
     make h-install 
   ```


### Monitoring
   After **you install helm** in your computer, you need run the following make command to install the monitoring stack:

  **Install prometheus stack**
  ```sh
     make install-monitoring
   ```

## Testing ⚙️



## References 

* serverless framework
    [reference](https://www.serverless.com/framework/docs/providers/knative/)
* examples with knative eventing


## Roadmap and Improvements 🚀

### Commons

❌ install_requirements.sh script. Add installation for Linux and Windows distros. 

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



See the [open issues](https://github.com/erasmolpa/serverless-workshop/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc) for a list of proposed features (and known issues).


## Contributing 🖇️

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Versioning 📌

This project use [Semantic Versioning](https://semver.org/lang/es/)

# Contact ✒️

Please contact me in the email **erasmolpa@gmail.com** if you have any cuestion

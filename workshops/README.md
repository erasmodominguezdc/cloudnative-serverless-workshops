# ABOUT

Cloud Native Serverless Workshop Series repository 
  
# WORKSHOP-1- INTRO KNATIVE SERVING

## About 

The idea is just install all the components in a local cluster and check what´s happens when we run the knative serving "hello-world" application. 

[Questions during the session](https://drive.google.com/file/d/15PvTVs3EBNVrUvA9TOfy37ImZ4-fQuCz/view?usp=sharing)

## Agenda 

   * Intro explaining the Project  
      * Makefile 
      * Tooling , environment
   * Intro serverless.
          * About serverless. Definition
          * Cloud native Serverless solutions (For now Kubeless and Knative)
   * Intro explaining the repo  
   * Intro Knative architecture driven by demo (Knative helloworld serving)

## Slides 

[Slides](https://drive.google.com/file/d/109Hafm2MGuH72FyUNLuCKDDlpTQhxgQT/view?usp=sharing)

## Steps 

1. Hacking your laptop (if needed)

```sh
     make hacking
```

2. Installing kubernetes (if needed)

**note:** you can enabled kubernetes in docker desktop if do you prefer.

```sh
     make create-cluster
```

3. Installing the Knative components. 

```sh
     make knative-install
```

4. Serve the helloworld application 

```sh
     make knative-workshop-1
```

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
  
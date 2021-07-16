# ABOUT

Cloud Native Serverless Workshop Series repository 
 All the slides are in the following [google drive](https://drive.google.com/drive/folders/1GK1c4y-CP33jKNrDlp71awIScwNvmobj?usp=sharing)
  
# WORKSHOP-1- INTRO KNATIVE SERVING

## About 

The idea is just install all the components in a local cluster and check what´s happens when we run the knative serving "hello-world" application. 

[Questions during the session](https://drive.google.com/file/d/15PvTVs3EBNVrUvA9TOfy37ImZ4-fQuCz/view?usp=sharing)

## Agenda 

  1. About the Cloud native Serverless workshop series
  
      * Goals
      
      * Quick review about resources, repository
      
  2. Serverless
  
      * What is serverless in a nutshell?
      
      * Serverless In Cloud native environments (Kubernetes)
      
  3. Knative
   
      * Introduction
      
      * Review Serving Architecture and components
      
      * Workshop Serving example.


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

4. Build the helloworld application 

```sh
     knative-workshop-build
```

5. Serve the helloworld application 

```sh
     knative-workshop-serve
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
   * Serverless Patterns 
   * Knative  
     * Installing components
     * Brokers
     * Flows 
     * Channels
     * Observability
     
# NATIVE SERVERLESS CHAT SERIES
  * Deep Dive into Serverless Concepts
    * History
    * All serverless implementations are ?
     
  * Mapping Architecture. Serverless into Kubernetes How Do they Do ? 
  

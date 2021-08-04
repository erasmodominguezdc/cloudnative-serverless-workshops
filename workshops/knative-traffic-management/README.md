# ABOUT

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

3. Installing the Knative components + Istio + Monitoring Operator

```sh
     make knative-install
     make istio-install
     make monitoring-install
```

5. Serve the helloworld application 

```sh
     make knative-bg-demo
```

6 Access and configure local DNS resolution
https://knative.dev/docs/serving/using-a-custom-domain/

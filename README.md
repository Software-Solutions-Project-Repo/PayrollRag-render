---
title: Payroll Rag Backend
colorFrom: blue
colorTo: green
sdk: docker
app_port: 7860
pinned: false
---

> **Note**The above is required for hugging face spaces, Don't delete the above table, the deployed site requires it to work 

##PayrollRag-Render 
---------------

The `main` branch of this repo serves as the backend for the application as it runs the 
`python -m uvicorn main:app --reload`
which is required for the routes to connect the openwebui. 
This uses a **Dockerfile** to run this command and this file manages it. 


##Deployment History
---


This was orginally supposed to be deployed to render, however render has a storage bottleneck. When the render deloyed site was called by openwebui , it ran out of memory. 


##Current Infrastructure
---

The new deployed platform being used is **Hugging Face Space**, in which the backend can be accessed through this link 

https://k-m-12-payroll-backend.hf.space/


This space uses the `hf_backend_token.yaml` file to connect to this repo and the `langchain-rag` repo

This serves as the openwebui connection in the openwebui interface through the Dockerfile in that branch

The openwebui interface is connected on the `render-deploy` branch.
This branch has a hf_token.yaml which connects to huggingface through the github actions. In this link, the user can access openwebui and use the payroll rag by setting the model in the OpenAI API connections by adding the backend link as https://k-m-12-payroll-backend.hf.space/v1 which sets the model route to Openwebui 


This the OpenWebUi link:
https://k-m-12-payroll-rag-ui.hf.space/

Huggingface spaces free tier puts a site to sleep after **48 hours** of inactivity and delete the current configuration(user accounts and connection to the backend). To avoid this, both sites are using [cron](https://cron-job.org/en/) which pings both sites every 12 hours.

Since there is no persistent storage, users will have to remake credentials after a while
...

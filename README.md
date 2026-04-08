---
title: Payroll Rag UI

colorFrom: blue
colorTo: green
sdk: docker
pinned: false
---

> **Note:** The table above is required for Hugging Face Spaces. Do not delete it; the deployed site requires it to function.
-------
# Payroll RAG Interface


This Open WebUI Frontend which uses the `hf_token.yaml` file to connect to huggingface space through the github actions to deploy the site. 


##Deployment History 
---

This was originally supposed to be connected on render but openwebui requires a lot of memory that extends the free tier of render

##Current Infrastructure
--

Now this uses Hugging face spaces since it has 16 gb of ram for its free tier which can support openwebui. This connection is being made by `hf_token.yaml` and the `Dockerfile`. This is the link to the site 

https://k-m-12-payroll-rag-ui.hf.space/

Please check the `main` for more details

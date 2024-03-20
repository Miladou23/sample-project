# Sample Project

Create Secrets - Some Private registry can delegate authentication to a separate service. 

In these cases,image pull secrets must be defined for both the authentication and registry endpoints (eg: Gitlab and hence 2 secrets)

```bash
#Create Secrets
oc create secret docker-registry app-registry-secret --docker-server=registry.gitlab.com  --docker-username="Miled BENHASSINE" --docker-password=Trunks23@@

oc create secret docker-registry app-gitlab-secret --docker-server=gitlab.com  --docker-username="Miled BENHASSINE" --docker-password=Trunks23@@

#Link secrets to Service A/C.
oc secrets link default app-registry-secret --for=pull
oc secrets link default app-gitlab-secret --for=pull
```

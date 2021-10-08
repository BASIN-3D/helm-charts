# The BASIN-3D Library of Helm Charts
BASIN-3D Helm Charts are to be used to deploy services to Kubernetes.

## Prerequisites
The helm charts have been tested on 

+ Rancher 2.4
+ Kubernetes 1.18
+ Helm 3.5

## Charts
The following BASIN-3D Charts are availabe

+ **django-basin3d:** deploys a basic [BASIN-3D Django](https://django-basin3d.readthedocs.org) app with public data sources.
  Use [docker-django-basin3d](BASIN-3D/docker-django-basin3d) to build the image needed for this chart. 
  
  
Add this chart repo to your helm

     helm repo add basin-3d https://basin-3d.github.io/helm-charts/
     
List all the charts in the repo

     helm search repo basin-3d
  
## Deploying a chart
Deploy a chart by packaging and signing it and then commiting it the source repository.

     helm package --sign --key "<key name>" --keyring ~/.gnupg/secring.gpg -d docs  <chart>
     helm repo index docs
     git add .
     git commit 

## Copyright

Broker for Assimilation, Synthesis and Integration of eNvironmental Diverse, Distributed Datasets (BASIN-3D) Copyright (c) 2019, The
Regents of the University of California, through Lawrence Berkeley National
Laboratory (subject to receipt of any required approvals from the U.S.
Dept. of Energy).  All rights reserved.

If you have questions about your rights to use or distribute this software,
please contact Berkeley Lab's Intellectual Property Office at
IPO@lbl.gov.

NOTICE.  This Software was developed under funding from the U.S. Department
of Energy and the U.S. Government consequently retains certain rights.  As
such, the U.S. Government has been granted for itself and others acting on
its behalf a paid-up, nonexclusive, irrevocable, worldwide license in the
Software to reproduce, distribute copies to the public, prepare derivative
works

# License

See [LICENSE](./LICENSE)

# People

Current Project [Team Members](https://github.com/orgs/BASIN-3D/teams/developers/members):


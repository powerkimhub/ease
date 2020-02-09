## shortening of K8S CLI
alias lsnode='kubectl get nodes -o wide'
alias descnode='kubectl describe nodes'

alias lspod='kubectl get pods -o wide'
alias descpod='kubectl describe pods'

alias lsdeploy='kubectl get deployments -o wide'
alias descdeploy='kubectl describe deployments'

alias lssvc='kubectl get svc -o wide'
alias descsvc='kubectl describe svc'

alias lsimg='kubectl -o custom-columns=CONTAINER:.spec.containers[*].name,IMAGE:.spec.containers[*].image get pods'

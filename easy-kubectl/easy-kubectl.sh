## shortening of K8S CLI
alias lscomponent='kubectl get componentstatuses'
alias lscomponents='kubectl get componentstatuses'
alias lsnode='kubectl get nodes -o wide'
alias lsnodes='lsnode'
alias descnode='kubectl describe nodes'
alias descnodes='descnode'

alias lspod='kubectl get pods -o wide'
alias lspods='lspod'
alias descpod='kubectl describe pods'
alias descpods='lspod'

alias lsdeploy='kubectl get deployments -o wide'
alias descdeploy='kubectl describe deployments'

alias lssvc='kubectl get svc -o wide'
alias descsvc='kubectl describe svc'

alias lsimg='kubectl -o custom-columns=CONTAINER:.spec.containers[*].name,IMAGE:.spec.containers[*].image get pods'
alias lsimgs='lsimg'

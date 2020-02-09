## shortening of K8S CLI
alias descnodes='kubectl describe nodes'
alias descpods='kubectl describe pods'
alias descsvc='kubectl describe svc'

alias lsnodes='kubectl get nodes -o wide'
alias lspods='kubectl get pods -o wide'
alias lssvc='kubectl get svc -o wide'

alias img='kubectl get -o custom-columns=CONTAINER:.spec.containers[0].name,IMAGE:.spec.containers[0].image pod'

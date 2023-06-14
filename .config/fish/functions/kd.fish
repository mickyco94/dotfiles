function kd --wraps='KUBECONFIG=~/.kube/ccloud-config/devel/kubeconfig kubectl' --description 'alias kd=KUBECONFIG=~/.kube/ccloud-config/devel/kubeconfig kubectl'
  KUBECONFIG=~/.kube/ccloud-config/devel/kubeconfig kubectl $argv
        
end

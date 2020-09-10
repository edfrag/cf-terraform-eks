if [ "$1" == "" ]; then
  echo "Usage: $0 [CLUSTER_NAME] [REGION]"
  exit
fi

export KUBECONFIG=$PWD/kubeconfig

aws eks update-kubeconfig --name $1 --region $2

echo "Execute the following command to use the newly created Kube config:"
echo
echo "export KUBECONFIG=kubeconfig.yaml"


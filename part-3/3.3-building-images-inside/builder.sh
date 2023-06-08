repo_path=$1

docker_repo=$2

base=https://github.com/

github_current_uri=$base$repo_path

echo $github_current_uri

git clone $github_current_uri


user=$(echo $repo_path | cut -d "/" -f 1)
repo=$(echo $repo_path | cut -d "/" -f 2)

cd $repo

docker build . -t $docker_repo && docker push $docker_repo:latest && cd .. && rm -rf $repo

echo "Done...!"

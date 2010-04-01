set :application, "Garden"
set :domain, "neiladmin@apocalypse.dreamhost.com"
set :repository, "git://github.com/nbudin/Garden.git"
set :revision, "origin/intercon"
set :deploy_to, "/home/neiladmin/garden"

namespace :vlad do
  Rake.clear_tasks('vlad:update_symlinks')

remote_task :update_symlinks, :roles => :app do
    run <<-EOF
for d in $(find #{shared_path}/local -type d)
do
  DIRNAME=${d\##{shared_path}/local}
  if [[ $DIRNAME != '.' ]]
  then
    echo "Making directory #{release_path}/$DIRNAME"
    mkdir -p #{release_path}/$DIRNAME
  fi
done  

for f in $(find #{shared_path}/local -type f)
do 
  FILENAME=${f\##{shared_path}/local/}
  if [[ $FILENAME != *~ ]]
  then
    echo "Linking in local copy of $f"
    rm -f #{release_path}/$FILENAME
    ln -s #{shared_path}/local/$FILENAME #{release_path}/$FILENAME
  fi
done
EOF
  end
end

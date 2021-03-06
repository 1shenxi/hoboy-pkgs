name=$1
project="@hoboy/$2"
dep=$3

echo "下载包名: $1"
echo "目标项目: $2 => $project"
echo "依赖类型: $3"
echo "===================="
echo "执行脚本：lerna add $name --scope=$project $dep"
echo "===================="

lerna add $name --scope=$project $dep

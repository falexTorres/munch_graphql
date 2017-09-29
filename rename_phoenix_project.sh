new_name=$1
NewName=$2

old_name="hello_graphql"
OldName="HelloGraphQL"

git grep -l $old_name | xargs sed -i "" -e "s/$old_name/$new_name/g"
git grep -l $OldName | xargs sed -i "" -e "s/$OldName/$NewName/g"
mv ./lib/$old_name "./lib/$new_name"
mv ./lib/$old_name.ex "./lib/$new_name.ex"

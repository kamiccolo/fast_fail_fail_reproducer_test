echo "Used cmdline: "
xargs -0 < /proc/$$/cmdline

echo "Is errexit set?"
shopt -op errexit

# This should fail the step and the job:
rm -r ./random_non_existent_dir
echo "Did not exit, err: $?"

# Let's just put -e again
set -e

echo "Is errexit set now?"
shopt -op errexit

rm -r ./yet_another_non_existent_dir
echo "Did not exit, err: $?"

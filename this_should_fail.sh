echo "Used cmdline: "
xargs -0 < /proc/$$/cmdline

echo "Is errexit set?"
shopt -op errexit

# This should fail the step and the job:
rm -r ./random_non_existent_dir
echo "Did not exit, err: $?"

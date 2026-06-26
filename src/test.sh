expected='Hello, Test!'

output=$(node -e "console.log(require('./src/app')('Test'))")


if [ "$output" = "$expected" ]; then
    echo "Test passed"
    exit 0
else
    echo "Test failed: expected '$expected', got '$output'"
    exit 1
fi
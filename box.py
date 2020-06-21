x = 4

print('+', end='')
for i in range(0, x):
    print('-+')
    for j in range(0, i):
        print('  ', end='')

    print('| |')
    for j in range(0, i):
        print('  ', end='')

    print('+-+', end='')
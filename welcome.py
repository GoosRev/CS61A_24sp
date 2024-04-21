def welcome(name):
    print('Welcome to CS61A, %s!'% name)
result = (lambda x: 2 * (lambda x: 3)(4) * x)(5)
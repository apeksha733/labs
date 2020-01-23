import random
import string
n=8
s=''.join(random.choices(string.ascii_letters+string.digits+string.punctuation,k=n))
print("random string is:"+str(s))

with open("requirements.txt", "r") as f:
    package_list = []
    package_list = sorted(f.readlines())

with open("requirements.txt", "w") as f:
    f.writelines(package_list)
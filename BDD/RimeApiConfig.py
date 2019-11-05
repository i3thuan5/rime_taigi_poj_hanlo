import Platform
import sys
import shutil
import os
from os.path import join

original_path_docker = "."
original_path_mac_os = "../taigi_pojhanlo_sujiphoat/"

path_docker = "../BDD/build/"
path_mac_os = "build/"

dict_filename = "taigi_pojhanlo.dict.yaml"
user_dict_filename = "taigi_pojhanlo.extended.dict.yaml"


def prepare_config_files_for_bdd():
    original_working_path = get_original_working_path()
    working_path = get_working_path()
    os.makedirs(working_path, exist_ok=True)
    list_dir = os.listdir(working_path)
    print("original_working_path: ", original_working_path)
    print("working_path: ", working_path)
    for item in list_dir:
        if item.endswith(".yaml"):
            os.remove(os.path.join(working_path, item))

    for filename in [
        "default.yaml",
        "taigi_pojhanlo.dict.yaml",
        "taigi_pojhanlo.extended.dict.yaml",
        "taigi_pojhanlo.schema.yaml",
        "taigi_pojhanlo.symbol.yaml"
    ]:
        shutil.copy(join(original_working_path, filename), working_path)


def prepare_dict_file_for_bdd(dict_word_lines):
    original_working_path = get_original_working_path()
    working_path = get_working_path()
    dict_file_path = os.path.join(working_path, dict_filename)
    print("dict_file_path: ", dict_file_path)
    os.remove(dict_file_path)

    original_dict_file_lines = []
    with open(join(original_working_path, dict_filename),
              "r") as original_dict_file:
        found = False
        for line in original_dict_file:
            # print("line:", line)
            if "..." in line:
                found = True
            original_dict_file_lines.append(line)
            if found:
                break

    f = open(working_path + dict_filename, "w")
    for original_dict_file_line in original_dict_file_lines:
        f.write(original_dict_file_line)
    for dict_word_line in dict_word_lines:
        f.write(dict_word_line)
        f.write("niau\tniau\n")
    f.close()


def prepare_user_dict_file_for_bdd(dict_word_lines):
    original_working_path = get_original_working_path()
    working_path = get_working_path()

    dict_file_path = os.path.join(working_path, user_dict_filename)
    print("dict_file_path: ", dict_file_path)
    os.remove(dict_file_path)

    original_dict_file_lines = []
    with open(join(original_working_path, user_dict_filename), "r") as original_dict_file:
        found = False
        for line in original_dict_file:
            # print("line:", line)
            if "..." in line:
                found = True
            original_dict_file_lines.append(line)
            if found:
                break

    f = open(working_path + user_dict_filename, "w")
    for original_dict_file_line in original_dict_file_lines:
        f.write(original_dict_file_line)
    for dict_word_line in dict_word_lines:
        f.write(dict_word_line)
    f.close()


def dict_contains_word(jisu, phengim_with_space):
    found = False
    search_string = jisu + "\t" + phengim_with_space
    path = join(get_working_path(), dict_filename)
    with open(path, "r") as ins:
        for line in ins:
            if line.startswith(search_string):
                found = True
                break
    return found


def user_dict_contains_word(jisu, phengim_with_space):
    found = False
    search_string = jisu + "\t" + phengim_with_space

    path = join(get_working_path(), user_dict_filename)

    with open(path, "r") as ins:
        for line in ins:
            if line.startswith(search_string):
                found = True
                break

    if found:
        print("Search string:\"" + search_string + "\" found!")
    else:
        print("Search string:\"" + search_string + "\" not found!")

    return found


def get_original_working_path():
    if Platform.docker in sys.platform:
        return original_path_docker
    elif Platform.mac_os in sys.platform:
        return original_path_mac_os
    else:
        raise RuntimeError(
            "Unsupported operating system: {}".format(sys.platform))


def get_working_path():
    if Platform.docker in sys.platform:
        return path_docker
    elif Platform.mac_os in sys.platform:
        return path_mac_os
    else:
        raise RuntimeError(
            "Unsupported operating system: {}".format(sys.platform))

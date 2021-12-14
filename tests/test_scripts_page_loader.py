import subprocess


def test_scripts_page_loader_hello_world():

    assert "hello world!" == subprocess.check_output(
        ["page-loader"],
        universal_newlines=True,
    ).rstrip()

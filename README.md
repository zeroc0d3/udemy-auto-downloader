## Udemy Auto Downloader

### Requirements
* Udemy Account
* Python (2.7.x or 3.x)
* [Udemy-Downloader](https://github.com/r0oth3x49/udemy-dl)
* [Get Access Token with Chrome](https://github.com/r0oth3x49/udemy-dl/issues/389#issuecomment-492569372)
* [Get Access Token with Firefox](https://github.com/r0oth3x49/udemy-dl/issues/389#issuecomment-491903900)

### Installation
* Install python with PyEnv (Python Environment)

    ```
    make install-pyenv
    ```

* Get Udemy Downloader

    ```
    make setup
    ```

### Setup Auto Downloader
* Add acccess_token in `access.key` file
* Define your url in `LIST_TUTORIAL_URL` (`run.sh`)
* Running terminal:
    ```
    make run        # or type #
    bash run.sh
    ```

### Gretz
* [r0oth3x49](https://github.com/r0oth3x49)

### License
* MIT License
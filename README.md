
# HAKWallet – Ethereum Mini Wallet

## Tech Stack
- Flutter
- Flask (Python)
- PostgreSQL
- Ethereum Sepolia
- Alchemy

## Team
- Huy – Frontend
- Khanh – Backend
- Huyền Anh – Database

## How to run
### Backend
cd backend
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
python app.py

### Frontend
cd frontend
flutter pub get
flutter run


```
wallet-project
├─ backend
│  ├─ .env
│  ├─ .env.example
│  ├─ app.py
│  ├─ README_backend.md
│  ├─ requirements.txt
│  ├─ test_db.py
│  └─ venv
│     ├─ Include
│     ├─ Lib
│     │  └─ site-packages
│     │     ├─ blinker
│     │     │  ├─ base.py
│     │     │  ├─ py.typed
│     │     │  ├─ _utilities.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ base.cpython-314.pyc
│     │     │     ├─ _utilities.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ blinker-1.9.0.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ LICENSE.txt
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  └─ WHEEL
│     │     ├─ certifi
│     │     │  ├─ cacert.pem
│     │     │  ├─ core.py
│     │     │  ├─ py.typed
│     │     │  ├─ __init__.py
│     │     │  ├─ __main__.py
│     │     │  └─ __pycache__
│     │     │     ├─ core.cpython-314.pyc
│     │     │     ├─ __init__.cpython-314.pyc
│     │     │     └─ __main__.cpython-314.pyc
│     │     ├─ certifi-2025.11.12.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ top_level.txt
│     │     │  └─ WHEEL
│     │     ├─ charset_normalizer
│     │     │  ├─ api.py
│     │     │  ├─ cd.py
│     │     │  ├─ cli
│     │     │  │  ├─ __init__.py
│     │     │  │  ├─ __main__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ __init__.cpython-314.pyc
│     │     │  │     └─ __main__.cpython-314.pyc
│     │     │  ├─ constant.py
│     │     │  ├─ legacy.py
│     │     │  ├─ md.cp314-win_amd64.pyd
│     │     │  ├─ md.py
│     │     │  ├─ md__mypyc.cp314-win_amd64.pyd
│     │     │  ├─ models.py
│     │     │  ├─ py.typed
│     │     │  ├─ utils.py
│     │     │  ├─ version.py
│     │     │  ├─ __init__.py
│     │     │  ├─ __main__.py
│     │     │  └─ __pycache__
│     │     │     ├─ api.cpython-314.pyc
│     │     │     ├─ cd.cpython-314.pyc
│     │     │     ├─ constant.cpython-314.pyc
│     │     │     ├─ legacy.cpython-314.pyc
│     │     │     ├─ md.cpython-314.pyc
│     │     │     ├─ models.cpython-314.pyc
│     │     │     ├─ utils.cpython-314.pyc
│     │     │     ├─ version.cpython-314.pyc
│     │     │     ├─ __init__.cpython-314.pyc
│     │     │     └─ __main__.cpython-314.pyc
│     │     ├─ charset_normalizer-3.4.4.dist-info
│     │     │  ├─ entry_points.txt
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ top_level.txt
│     │     │  └─ WHEEL
│     │     ├─ click
│     │     │  ├─ core.py
│     │     │  ├─ decorators.py
│     │     │  ├─ exceptions.py
│     │     │  ├─ formatting.py
│     │     │  ├─ globals.py
│     │     │  ├─ parser.py
│     │     │  ├─ py.typed
│     │     │  ├─ shell_completion.py
│     │     │  ├─ termui.py
│     │     │  ├─ testing.py
│     │     │  ├─ types.py
│     │     │  ├─ utils.py
│     │     │  ├─ _compat.py
│     │     │  ├─ _termui_impl.py
│     │     │  ├─ _textwrap.py
│     │     │  ├─ _utils.py
│     │     │  ├─ _winconsole.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ core.cpython-314.pyc
│     │     │     ├─ decorators.cpython-314.pyc
│     │     │     ├─ exceptions.cpython-314.pyc
│     │     │     ├─ formatting.cpython-314.pyc
│     │     │     ├─ globals.cpython-314.pyc
│     │     │     ├─ parser.cpython-314.pyc
│     │     │     ├─ shell_completion.cpython-314.pyc
│     │     │     ├─ termui.cpython-314.pyc
│     │     │     ├─ testing.cpython-314.pyc
│     │     │     ├─ types.cpython-314.pyc
│     │     │     ├─ utils.cpython-314.pyc
│     │     │     ├─ _compat.cpython-314.pyc
│     │     │     ├─ _termui_impl.cpython-314.pyc
│     │     │     ├─ _textwrap.cpython-314.pyc
│     │     │     ├─ _utils.cpython-314.pyc
│     │     │     ├─ _winconsole.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ click-8.3.1.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE.txt
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  └─ WHEEL
│     │     ├─ colorama
│     │     │  ├─ ansi.py
│     │     │  ├─ ansitowin32.py
│     │     │  ├─ initialise.py
│     │     │  ├─ tests
│     │     │  │  ├─ ansitowin32_test.py
│     │     │  │  ├─ ansi_test.py
│     │     │  │  ├─ initialise_test.py
│     │     │  │  ├─ isatty_test.py
│     │     │  │  ├─ utils.py
│     │     │  │  ├─ winterm_test.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ ansitowin32_test.cpython-314.pyc
│     │     │  │     ├─ ansi_test.cpython-314.pyc
│     │     │  │     ├─ initialise_test.cpython-314.pyc
│     │     │  │     ├─ isatty_test.cpython-314.pyc
│     │     │  │     ├─ utils.cpython-314.pyc
│     │     │  │     ├─ winterm_test.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ win32.py
│     │     │  ├─ winterm.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ ansi.cpython-314.pyc
│     │     │     ├─ ansitowin32.cpython-314.pyc
│     │     │     ├─ initialise.cpython-314.pyc
│     │     │     ├─ win32.cpython-314.pyc
│     │     │     ├─ winterm.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ colorama-0.4.6.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE.txt
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  └─ WHEEL
│     │     ├─ distutils-precedence.pth
│     │     ├─ dotenv
│     │     │  ├─ cli.py
│     │     │  ├─ ipython.py
│     │     │  ├─ main.py
│     │     │  ├─ parser.py
│     │     │  ├─ py.typed
│     │     │  ├─ variables.py
│     │     │  ├─ version.py
│     │     │  ├─ __init__.py
│     │     │  ├─ __main__.py
│     │     │  └─ __pycache__
│     │     │     ├─ cli.cpython-314.pyc
│     │     │     ├─ ipython.cpython-314.pyc
│     │     │     ├─ main.cpython-314.pyc
│     │     │     ├─ parser.cpython-314.pyc
│     │     │     ├─ variables.cpython-314.pyc
│     │     │     ├─ version.cpython-314.pyc
│     │     │     ├─ __init__.cpython-314.pyc
│     │     │     └─ __main__.cpython-314.pyc
│     │     ├─ flask
│     │     │  ├─ app.py
│     │     │  ├─ blueprints.py
│     │     │  ├─ cli.py
│     │     │  ├─ config.py
│     │     │  ├─ ctx.py
│     │     │  ├─ debughelpers.py
│     │     │  ├─ globals.py
│     │     │  ├─ helpers.py
│     │     │  ├─ json
│     │     │  │  ├─ provider.py
│     │     │  │  ├─ tag.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ provider.cpython-314.pyc
│     │     │  │     ├─ tag.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ logging.py
│     │     │  ├─ py.typed
│     │     │  ├─ sansio
│     │     │  │  ├─ app.py
│     │     │  │  ├─ blueprints.py
│     │     │  │  ├─ README.md
│     │     │  │  ├─ scaffold.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ app.cpython-314.pyc
│     │     │  │     ├─ blueprints.cpython-314.pyc
│     │     │  │     └─ scaffold.cpython-314.pyc
│     │     │  ├─ sessions.py
│     │     │  ├─ signals.py
│     │     │  ├─ templating.py
│     │     │  ├─ testing.py
│     │     │  ├─ typing.py
│     │     │  ├─ views.py
│     │     │  ├─ wrappers.py
│     │     │  ├─ __init__.py
│     │     │  ├─ __main__.py
│     │     │  └─ __pycache__
│     │     │     ├─ app.cpython-314.pyc
│     │     │     ├─ blueprints.cpython-314.pyc
│     │     │     ├─ cli.cpython-314.pyc
│     │     │     ├─ config.cpython-314.pyc
│     │     │     ├─ ctx.cpython-314.pyc
│     │     │     ├─ debughelpers.cpython-314.pyc
│     │     │     ├─ globals.cpython-314.pyc
│     │     │     ├─ helpers.cpython-314.pyc
│     │     │     ├─ logging.cpython-314.pyc
│     │     │     ├─ sessions.cpython-314.pyc
│     │     │     ├─ signals.cpython-314.pyc
│     │     │     ├─ templating.cpython-314.pyc
│     │     │     ├─ testing.cpython-314.pyc
│     │     │     ├─ typing.cpython-314.pyc
│     │     │     ├─ views.cpython-314.pyc
│     │     │     ├─ wrappers.cpython-314.pyc
│     │     │     ├─ __init__.cpython-314.pyc
│     │     │     └─ __main__.cpython-314.pyc
│     │     ├─ flask-3.1.2.dist-info
│     │     │  ├─ entry_points.txt
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE.txt
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ REQUESTED
│     │     │  └─ WHEEL
│     │     ├─ flask_cors
│     │     │  ├─ core.py
│     │     │  ├─ decorator.py
│     │     │  ├─ extension.py
│     │     │  ├─ version.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ core.cpython-314.pyc
│     │     │     ├─ decorator.cpython-314.pyc
│     │     │     ├─ extension.cpython-314.pyc
│     │     │     ├─ version.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ flask_cors-6.0.2.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ REQUESTED
│     │     │  ├─ top_level.txt
│     │     │  └─ WHEEL
│     │     ├─ gunicorn
│     │     │  ├─ app
│     │     │  │  ├─ base.py
│     │     │  │  ├─ pasterapp.py
│     │     │  │  ├─ wsgiapp.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ base.cpython-314.pyc
│     │     │  │     ├─ pasterapp.cpython-314.pyc
│     │     │  │     ├─ wsgiapp.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ arbiter.py
│     │     │  ├─ config.py
│     │     │  ├─ debug.py
│     │     │  ├─ errors.py
│     │     │  ├─ glogging.py
│     │     │  ├─ http
│     │     │  │  ├─ body.py
│     │     │  │  ├─ errors.py
│     │     │  │  ├─ message.py
│     │     │  │  ├─ parser.py
│     │     │  │  ├─ unreader.py
│     │     │  │  ├─ wsgi.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ body.cpython-314.pyc
│     │     │  │     ├─ errors.cpython-314.pyc
│     │     │  │     ├─ message.cpython-314.pyc
│     │     │  │     ├─ parser.cpython-314.pyc
│     │     │  │     ├─ unreader.cpython-314.pyc
│     │     │  │     ├─ wsgi.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ instrument
│     │     │  │  ├─ statsd.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ statsd.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ pidfile.py
│     │     │  ├─ reloader.py
│     │     │  ├─ sock.py
│     │     │  ├─ systemd.py
│     │     │  ├─ util.py
│     │     │  ├─ workers
│     │     │  │  ├─ base.py
│     │     │  │  ├─ base_async.py
│     │     │  │  ├─ geventlet.py
│     │     │  │  ├─ ggevent.py
│     │     │  │  ├─ gthread.py
│     │     │  │  ├─ gtornado.py
│     │     │  │  ├─ sync.py
│     │     │  │  ├─ workertmp.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ base.cpython-314.pyc
│     │     │  │     ├─ base_async.cpython-314.pyc
│     │     │  │     ├─ geventlet.cpython-314.pyc
│     │     │  │     ├─ ggevent.cpython-314.pyc
│     │     │  │     ├─ gthread.cpython-314.pyc
│     │     │  │     ├─ gtornado.cpython-314.pyc
│     │     │  │     ├─ sync.cpython-314.pyc
│     │     │  │     ├─ workertmp.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ __init__.py
│     │     │  ├─ __main__.py
│     │     │  └─ __pycache__
│     │     │     ├─ arbiter.cpython-314.pyc
│     │     │     ├─ config.cpython-314.pyc
│     │     │     ├─ debug.cpython-314.pyc
│     │     │     ├─ errors.cpython-314.pyc
│     │     │     ├─ glogging.cpython-314.pyc
│     │     │     ├─ pidfile.cpython-314.pyc
│     │     │     ├─ reloader.cpython-314.pyc
│     │     │     ├─ sock.cpython-314.pyc
│     │     │     ├─ systemd.cpython-314.pyc
│     │     │     ├─ util.cpython-314.pyc
│     │     │     ├─ __init__.cpython-314.pyc
│     │     │     └─ __main__.cpython-314.pyc
│     │     ├─ gunicorn-21.2.0.dist-info
│     │     │  ├─ entry_points.txt
│     │     │  ├─ INSTALLER
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ REQUESTED
│     │     │  ├─ top_level.txt
│     │     │  └─ WHEEL
│     │     ├─ idna
│     │     │  ├─ codec.py
│     │     │  ├─ compat.py
│     │     │  ├─ core.py
│     │     │  ├─ idnadata.py
│     │     │  ├─ intranges.py
│     │     │  ├─ package_data.py
│     │     │  ├─ py.typed
│     │     │  ├─ uts46data.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ codec.cpython-314.pyc
│     │     │     ├─ compat.cpython-314.pyc
│     │     │     ├─ core.cpython-314.pyc
│     │     │     ├─ idnadata.cpython-314.pyc
│     │     │     ├─ intranges.cpython-314.pyc
│     │     │     ├─ package_data.cpython-314.pyc
│     │     │     ├─ uts46data.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ idna-3.11.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE.md
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  └─ WHEEL
│     │     ├─ itsdangerous
│     │     │  ├─ encoding.py
│     │     │  ├─ exc.py
│     │     │  ├─ py.typed
│     │     │  ├─ serializer.py
│     │     │  ├─ signer.py
│     │     │  ├─ timed.py
│     │     │  ├─ url_safe.py
│     │     │  ├─ _json.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ encoding.cpython-314.pyc
│     │     │     ├─ exc.cpython-314.pyc
│     │     │     ├─ serializer.cpython-314.pyc
│     │     │     ├─ signer.cpython-314.pyc
│     │     │     ├─ timed.cpython-314.pyc
│     │     │     ├─ url_safe.cpython-314.pyc
│     │     │     ├─ _json.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ itsdangerous-2.2.0.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ LICENSE.txt
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  └─ WHEEL
│     │     ├─ jinja2
│     │     │  ├─ async_utils.py
│     │     │  ├─ bccache.py
│     │     │  ├─ compiler.py
│     │     │  ├─ constants.py
│     │     │  ├─ debug.py
│     │     │  ├─ defaults.py
│     │     │  ├─ environment.py
│     │     │  ├─ exceptions.py
│     │     │  ├─ ext.py
│     │     │  ├─ filters.py
│     │     │  ├─ idtracking.py
│     │     │  ├─ lexer.py
│     │     │  ├─ loaders.py
│     │     │  ├─ meta.py
│     │     │  ├─ nativetypes.py
│     │     │  ├─ nodes.py
│     │     │  ├─ optimizer.py
│     │     │  ├─ parser.py
│     │     │  ├─ py.typed
│     │     │  ├─ runtime.py
│     │     │  ├─ sandbox.py
│     │     │  ├─ tests.py
│     │     │  ├─ utils.py
│     │     │  ├─ visitor.py
│     │     │  ├─ _identifier.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ async_utils.cpython-314.pyc
│     │     │     ├─ bccache.cpython-314.pyc
│     │     │     ├─ compiler.cpython-314.pyc
│     │     │     ├─ constants.cpython-314.pyc
│     │     │     ├─ debug.cpython-314.pyc
│     │     │     ├─ defaults.cpython-314.pyc
│     │     │     ├─ environment.cpython-314.pyc
│     │     │     ├─ exceptions.cpython-314.pyc
│     │     │     ├─ ext.cpython-314.pyc
│     │     │     ├─ filters.cpython-314.pyc
│     │     │     ├─ idtracking.cpython-314.pyc
│     │     │     ├─ lexer.cpython-314.pyc
│     │     │     ├─ loaders.cpython-314.pyc
│     │     │     ├─ meta.cpython-314.pyc
│     │     │     ├─ nativetypes.cpython-314.pyc
│     │     │     ├─ nodes.cpython-314.pyc
│     │     │     ├─ optimizer.cpython-314.pyc
│     │     │     ├─ parser.cpython-314.pyc
│     │     │     ├─ runtime.cpython-314.pyc
│     │     │     ├─ sandbox.cpython-314.pyc
│     │     │     ├─ tests.cpython-314.pyc
│     │     │     ├─ utils.cpython-314.pyc
│     │     │     ├─ visitor.cpython-314.pyc
│     │     │     ├─ _identifier.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ jinja2-3.1.6.dist-info
│     │     │  ├─ entry_points.txt
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE.txt
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  └─ WHEEL
│     │     ├─ markupsafe
│     │     │  ├─ py.typed
│     │     │  ├─ _native.py
│     │     │  ├─ _speedups.c
│     │     │  ├─ _speedups.cp314-win_amd64.pyd
│     │     │  ├─ _speedups.pyi
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ _native.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ markupsafe-3.0.3.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE.txt
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ top_level.txt
│     │     │  └─ WHEEL
│     │     ├─ packaging
│     │     │  ├─ licenses
│     │     │  │  ├─ _spdx.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ _spdx.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ markers.py
│     │     │  ├─ metadata.py
│     │     │  ├─ py.typed
│     │     │  ├─ requirements.py
│     │     │  ├─ specifiers.py
│     │     │  ├─ tags.py
│     │     │  ├─ utils.py
│     │     │  ├─ version.py
│     │     │  ├─ _elffile.py
│     │     │  ├─ _manylinux.py
│     │     │  ├─ _musllinux.py
│     │     │  ├─ _parser.py
│     │     │  ├─ _structures.py
│     │     │  ├─ _tokenizer.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ markers.cpython-314.pyc
│     │     │     ├─ metadata.cpython-314.pyc
│     │     │     ├─ requirements.cpython-314.pyc
│     │     │     ├─ specifiers.cpython-314.pyc
│     │     │     ├─ tags.cpython-314.pyc
│     │     │     ├─ utils.cpython-314.pyc
│     │     │     ├─ version.cpython-314.pyc
│     │     │     ├─ _elffile.cpython-314.pyc
│     │     │     ├─ _manylinux.cpython-314.pyc
│     │     │     ├─ _musllinux.cpython-314.pyc
│     │     │     ├─ _parser.cpython-314.pyc
│     │     │     ├─ _structures.cpython-314.pyc
│     │     │     ├─ _tokenizer.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ packaging-25.0.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  ├─ LICENSE
│     │     │  │  ├─ LICENSE.APACHE
│     │     │  │  └─ LICENSE.BSD
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  └─ WHEEL
│     │     ├─ pip
│     │     │  ├─ py.typed
│     │     │  ├─ _internal
│     │     │  │  ├─ build_env.py
│     │     │  │  ├─ cache.py
│     │     │  │  ├─ cli
│     │     │  │  │  ├─ autocompletion.py
│     │     │  │  │  ├─ base_command.py
│     │     │  │  │  ├─ cmdoptions.py
│     │     │  │  │  ├─ command_context.py
│     │     │  │  │  ├─ index_command.py
│     │     │  │  │  ├─ main.py
│     │     │  │  │  ├─ main_parser.py
│     │     │  │  │  ├─ parser.py
│     │     │  │  │  ├─ progress_bars.py
│     │     │  │  │  ├─ req_command.py
│     │     │  │  │  ├─ spinners.py
│     │     │  │  │  ├─ status_codes.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ autocompletion.cpython-314.pyc
│     │     │  │  │     ├─ base_command.cpython-314.pyc
│     │     │  │  │     ├─ cmdoptions.cpython-314.pyc
│     │     │  │  │     ├─ command_context.cpython-314.pyc
│     │     │  │  │     ├─ index_command.cpython-314.pyc
│     │     │  │  │     ├─ main.cpython-314.pyc
│     │     │  │  │     ├─ main_parser.cpython-314.pyc
│     │     │  │  │     ├─ parser.cpython-314.pyc
│     │     │  │  │     ├─ progress_bars.cpython-314.pyc
│     │     │  │  │     ├─ req_command.cpython-314.pyc
│     │     │  │  │     ├─ spinners.cpython-314.pyc
│     │     │  │  │     ├─ status_codes.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ commands
│     │     │  │  │  ├─ cache.py
│     │     │  │  │  ├─ check.py
│     │     │  │  │  ├─ completion.py
│     │     │  │  │  ├─ configuration.py
│     │     │  │  │  ├─ debug.py
│     │     │  │  │  ├─ download.py
│     │     │  │  │  ├─ freeze.py
│     │     │  │  │  ├─ hash.py
│     │     │  │  │  ├─ help.py
│     │     │  │  │  ├─ index.py
│     │     │  │  │  ├─ inspect.py
│     │     │  │  │  ├─ install.py
│     │     │  │  │  ├─ list.py
│     │     │  │  │  ├─ lock.py
│     │     │  │  │  ├─ search.py
│     │     │  │  │  ├─ show.py
│     │     │  │  │  ├─ uninstall.py
│     │     │  │  │  ├─ wheel.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ cache.cpython-314.pyc
│     │     │  │  │     ├─ check.cpython-314.pyc
│     │     │  │  │     ├─ completion.cpython-314.pyc
│     │     │  │  │     ├─ configuration.cpython-314.pyc
│     │     │  │  │     ├─ debug.cpython-314.pyc
│     │     │  │  │     ├─ download.cpython-314.pyc
│     │     │  │  │     ├─ freeze.cpython-314.pyc
│     │     │  │  │     ├─ hash.cpython-314.pyc
│     │     │  │  │     ├─ help.cpython-314.pyc
│     │     │  │  │     ├─ index.cpython-314.pyc
│     │     │  │  │     ├─ inspect.cpython-314.pyc
│     │     │  │  │     ├─ install.cpython-314.pyc
│     │     │  │  │     ├─ list.cpython-314.pyc
│     │     │  │  │     ├─ lock.cpython-314.pyc
│     │     │  │  │     ├─ search.cpython-314.pyc
│     │     │  │  │     ├─ show.cpython-314.pyc
│     │     │  │  │     ├─ uninstall.cpython-314.pyc
│     │     │  │  │     ├─ wheel.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ configuration.py
│     │     │  │  ├─ distributions
│     │     │  │  │  ├─ base.py
│     │     │  │  │  ├─ installed.py
│     │     │  │  │  ├─ sdist.py
│     │     │  │  │  ├─ wheel.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ base.cpython-314.pyc
│     │     │  │  │     ├─ installed.cpython-314.pyc
│     │     │  │  │     ├─ sdist.cpython-314.pyc
│     │     │  │  │     ├─ wheel.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ exceptions.py
│     │     │  │  ├─ index
│     │     │  │  │  ├─ collector.py
│     │     │  │  │  ├─ package_finder.py
│     │     │  │  │  ├─ sources.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ collector.cpython-314.pyc
│     │     │  │  │     ├─ package_finder.cpython-314.pyc
│     │     │  │  │     ├─ sources.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ locations
│     │     │  │  │  ├─ base.py
│     │     │  │  │  ├─ _distutils.py
│     │     │  │  │  ├─ _sysconfig.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ base.cpython-314.pyc
│     │     │  │  │     ├─ _distutils.cpython-314.pyc
│     │     │  │  │     ├─ _sysconfig.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ main.py
│     │     │  │  ├─ metadata
│     │     │  │  │  ├─ base.py
│     │     │  │  │  ├─ importlib
│     │     │  │  │  │  ├─ _compat.py
│     │     │  │  │  │  ├─ _dists.py
│     │     │  │  │  │  ├─ _envs.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ _compat.cpython-314.pyc
│     │     │  │  │  │     ├─ _dists.cpython-314.pyc
│     │     │  │  │  │     ├─ _envs.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ pkg_resources.py
│     │     │  │  │  ├─ _json.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ base.cpython-314.pyc
│     │     │  │  │     ├─ pkg_resources.cpython-314.pyc
│     │     │  │  │     ├─ _json.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ models
│     │     │  │  │  ├─ candidate.py
│     │     │  │  │  ├─ direct_url.py
│     │     │  │  │  ├─ format_control.py
│     │     │  │  │  ├─ index.py
│     │     │  │  │  ├─ installation_report.py
│     │     │  │  │  ├─ link.py
│     │     │  │  │  ├─ pylock.py
│     │     │  │  │  ├─ scheme.py
│     │     │  │  │  ├─ search_scope.py
│     │     │  │  │  ├─ selection_prefs.py
│     │     │  │  │  ├─ target_python.py
│     │     │  │  │  ├─ wheel.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ candidate.cpython-314.pyc
│     │     │  │  │     ├─ direct_url.cpython-314.pyc
│     │     │  │  │     ├─ format_control.cpython-314.pyc
│     │     │  │  │     ├─ index.cpython-314.pyc
│     │     │  │  │     ├─ installation_report.cpython-314.pyc
│     │     │  │  │     ├─ link.cpython-314.pyc
│     │     │  │  │     ├─ pylock.cpython-314.pyc
│     │     │  │  │     ├─ scheme.cpython-314.pyc
│     │     │  │  │     ├─ search_scope.cpython-314.pyc
│     │     │  │  │     ├─ selection_prefs.cpython-314.pyc
│     │     │  │  │     ├─ target_python.cpython-314.pyc
│     │     │  │  │     ├─ wheel.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ network
│     │     │  │  │  ├─ auth.py
│     │     │  │  │  ├─ cache.py
│     │     │  │  │  ├─ download.py
│     │     │  │  │  ├─ lazy_wheel.py
│     │     │  │  │  ├─ session.py
│     │     │  │  │  ├─ utils.py
│     │     │  │  │  ├─ xmlrpc.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ auth.cpython-314.pyc
│     │     │  │  │     ├─ cache.cpython-314.pyc
│     │     │  │  │     ├─ download.cpython-314.pyc
│     │     │  │  │     ├─ lazy_wheel.cpython-314.pyc
│     │     │  │  │     ├─ session.cpython-314.pyc
│     │     │  │  │     ├─ utils.cpython-314.pyc
│     │     │  │  │     ├─ xmlrpc.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ operations
│     │     │  │  │  ├─ build
│     │     │  │  │  │  ├─ build_tracker.py
│     │     │  │  │  │  ├─ metadata.py
│     │     │  │  │  │  ├─ metadata_editable.py
│     │     │  │  │  │  ├─ wheel.py
│     │     │  │  │  │  ├─ wheel_editable.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ build_tracker.cpython-314.pyc
│     │     │  │  │  │     ├─ metadata.cpython-314.pyc
│     │     │  │  │  │     ├─ metadata_editable.cpython-314.pyc
│     │     │  │  │  │     ├─ wheel.cpython-314.pyc
│     │     │  │  │  │     ├─ wheel_editable.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ check.py
│     │     │  │  │  ├─ freeze.py
│     │     │  │  │  ├─ install
│     │     │  │  │  │  ├─ wheel.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ wheel.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ prepare.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ check.cpython-314.pyc
│     │     │  │  │     ├─ freeze.cpython-314.pyc
│     │     │  │  │     ├─ prepare.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ pyproject.py
│     │     │  │  ├─ req
│     │     │  │  │  ├─ constructors.py
│     │     │  │  │  ├─ req_dependency_group.py
│     │     │  │  │  ├─ req_file.py
│     │     │  │  │  ├─ req_install.py
│     │     │  │  │  ├─ req_set.py
│     │     │  │  │  ├─ req_uninstall.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ constructors.cpython-314.pyc
│     │     │  │  │     ├─ req_dependency_group.cpython-314.pyc
│     │     │  │  │     ├─ req_file.cpython-314.pyc
│     │     │  │  │     ├─ req_install.cpython-314.pyc
│     │     │  │  │     ├─ req_set.cpython-314.pyc
│     │     │  │  │     ├─ req_uninstall.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ resolution
│     │     │  │  │  ├─ base.py
│     │     │  │  │  ├─ legacy
│     │     │  │  │  │  ├─ resolver.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ resolver.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ resolvelib
│     │     │  │  │  │  ├─ base.py
│     │     │  │  │  │  ├─ candidates.py
│     │     │  │  │  │  ├─ factory.py
│     │     │  │  │  │  ├─ found_candidates.py
│     │     │  │  │  │  ├─ provider.py
│     │     │  │  │  │  ├─ reporter.py
│     │     │  │  │  │  ├─ requirements.py
│     │     │  │  │  │  ├─ resolver.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ base.cpython-314.pyc
│     │     │  │  │  │     ├─ candidates.cpython-314.pyc
│     │     │  │  │  │     ├─ factory.cpython-314.pyc
│     │     │  │  │  │     ├─ found_candidates.cpython-314.pyc
│     │     │  │  │  │     ├─ provider.cpython-314.pyc
│     │     │  │  │  │     ├─ reporter.cpython-314.pyc
│     │     │  │  │  │     ├─ requirements.cpython-314.pyc
│     │     │  │  │  │     ├─ resolver.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ base.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ self_outdated_check.py
│     │     │  │  ├─ utils
│     │     │  │  │  ├─ appdirs.py
│     │     │  │  │  ├─ compat.py
│     │     │  │  │  ├─ compatibility_tags.py
│     │     │  │  │  ├─ datetime.py
│     │     │  │  │  ├─ deprecation.py
│     │     │  │  │  ├─ direct_url_helpers.py
│     │     │  │  │  ├─ egg_link.py
│     │     │  │  │  ├─ entrypoints.py
│     │     │  │  │  ├─ filesystem.py
│     │     │  │  │  ├─ filetypes.py
│     │     │  │  │  ├─ glibc.py
│     │     │  │  │  ├─ hashes.py
│     │     │  │  │  ├─ logging.py
│     │     │  │  │  ├─ misc.py
│     │     │  │  │  ├─ packaging.py
│     │     │  │  │  ├─ retry.py
│     │     │  │  │  ├─ subprocess.py
│     │     │  │  │  ├─ temp_dir.py
│     │     │  │  │  ├─ unpacking.py
│     │     │  │  │  ├─ urls.py
│     │     │  │  │  ├─ virtualenv.py
│     │     │  │  │  ├─ wheel.py
│     │     │  │  │  ├─ _jaraco_text.py
│     │     │  │  │  ├─ _log.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ appdirs.cpython-314.pyc
│     │     │  │  │     ├─ compat.cpython-314.pyc
│     │     │  │  │     ├─ compatibility_tags.cpython-314.pyc
│     │     │  │  │     ├─ datetime.cpython-314.pyc
│     │     │  │  │     ├─ deprecation.cpython-314.pyc
│     │     │  │  │     ├─ direct_url_helpers.cpython-314.pyc
│     │     │  │  │     ├─ egg_link.cpython-314.pyc
│     │     │  │  │     ├─ entrypoints.cpython-314.pyc
│     │     │  │  │     ├─ filesystem.cpython-314.pyc
│     │     │  │  │     ├─ filetypes.cpython-314.pyc
│     │     │  │  │     ├─ glibc.cpython-314.pyc
│     │     │  │  │     ├─ hashes.cpython-314.pyc
│     │     │  │  │     ├─ logging.cpython-314.pyc
│     │     │  │  │     ├─ misc.cpython-314.pyc
│     │     │  │  │     ├─ packaging.cpython-314.pyc
│     │     │  │  │     ├─ retry.cpython-314.pyc
│     │     │  │  │     ├─ subprocess.cpython-314.pyc
│     │     │  │  │     ├─ temp_dir.cpython-314.pyc
│     │     │  │  │     ├─ unpacking.cpython-314.pyc
│     │     │  │  │     ├─ urls.cpython-314.pyc
│     │     │  │  │     ├─ virtualenv.cpython-314.pyc
│     │     │  │  │     ├─ wheel.cpython-314.pyc
│     │     │  │  │     ├─ _jaraco_text.cpython-314.pyc
│     │     │  │  │     ├─ _log.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ vcs
│     │     │  │  │  ├─ bazaar.py
│     │     │  │  │  ├─ git.py
│     │     │  │  │  ├─ mercurial.py
│     │     │  │  │  ├─ subversion.py
│     │     │  │  │  ├─ versioncontrol.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ bazaar.cpython-314.pyc
│     │     │  │  │     ├─ git.cpython-314.pyc
│     │     │  │  │     ├─ mercurial.cpython-314.pyc
│     │     │  │  │     ├─ subversion.cpython-314.pyc
│     │     │  │  │     ├─ versioncontrol.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ wheel_builder.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ build_env.cpython-314.pyc
│     │     │  │     ├─ cache.cpython-314.pyc
│     │     │  │     ├─ configuration.cpython-314.pyc
│     │     │  │     ├─ exceptions.cpython-314.pyc
│     │     │  │     ├─ main.cpython-314.pyc
│     │     │  │     ├─ pyproject.cpython-314.pyc
│     │     │  │     ├─ self_outdated_check.cpython-314.pyc
│     │     │  │     ├─ wheel_builder.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ _vendor
│     │     │  │  ├─ cachecontrol
│     │     │  │  │  ├─ adapter.py
│     │     │  │  │  ├─ cache.py
│     │     │  │  │  ├─ caches
│     │     │  │  │  │  ├─ file_cache.py
│     │     │  │  │  │  ├─ redis_cache.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ file_cache.cpython-314.pyc
│     │     │  │  │  │     ├─ redis_cache.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ controller.py
│     │     │  │  │  ├─ filewrapper.py
│     │     │  │  │  ├─ heuristics.py
│     │     │  │  │  ├─ LICENSE.txt
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ serialize.py
│     │     │  │  │  ├─ wrapper.py
│     │     │  │  │  ├─ _cmd.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ adapter.cpython-314.pyc
│     │     │  │  │     ├─ cache.cpython-314.pyc
│     │     │  │  │     ├─ controller.cpython-314.pyc
│     │     │  │  │     ├─ filewrapper.cpython-314.pyc
│     │     │  │  │     ├─ heuristics.cpython-314.pyc
│     │     │  │  │     ├─ serialize.cpython-314.pyc
│     │     │  │  │     ├─ wrapper.cpython-314.pyc
│     │     │  │  │     ├─ _cmd.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ certifi
│     │     │  │  │  ├─ cacert.pem
│     │     │  │  │  ├─ core.py
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  ├─ __main__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ core.cpython-314.pyc
│     │     │  │  │     ├─ __init__.cpython-314.pyc
│     │     │  │  │     └─ __main__.cpython-314.pyc
│     │     │  │  ├─ dependency_groups
│     │     │  │  │  ├─ LICENSE.txt
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ _implementation.py
│     │     │  │  │  ├─ _lint_dependency_groups.py
│     │     │  │  │  ├─ _pip_wrapper.py
│     │     │  │  │  ├─ _toml_compat.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  ├─ __main__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ _implementation.cpython-314.pyc
│     │     │  │  │     ├─ _lint_dependency_groups.cpython-314.pyc
│     │     │  │  │     ├─ _pip_wrapper.cpython-314.pyc
│     │     │  │  │     ├─ _toml_compat.cpython-314.pyc
│     │     │  │  │     ├─ __init__.cpython-314.pyc
│     │     │  │  │     └─ __main__.cpython-314.pyc
│     │     │  │  ├─ distlib
│     │     │  │  │  ├─ compat.py
│     │     │  │  │  ├─ LICENSE.txt
│     │     │  │  │  ├─ resources.py
│     │     │  │  │  ├─ scripts.py
│     │     │  │  │  ├─ t32.exe
│     │     │  │  │  ├─ t64-arm.exe
│     │     │  │  │  ├─ t64.exe
│     │     │  │  │  ├─ util.py
│     │     │  │  │  ├─ w32.exe
│     │     │  │  │  ├─ w64-arm.exe
│     │     │  │  │  ├─ w64.exe
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ compat.cpython-314.pyc
│     │     │  │  │     ├─ resources.cpython-314.pyc
│     │     │  │  │     ├─ scripts.cpython-314.pyc
│     │     │  │  │     ├─ util.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ distro
│     │     │  │  │  ├─ distro.py
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  ├─ __main__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ distro.cpython-314.pyc
│     │     │  │  │     ├─ __init__.cpython-314.pyc
│     │     │  │  │     └─ __main__.cpython-314.pyc
│     │     │  │  ├─ idna
│     │     │  │  │  ├─ codec.py
│     │     │  │  │  ├─ compat.py
│     │     │  │  │  ├─ core.py
│     │     │  │  │  ├─ idnadata.py
│     │     │  │  │  ├─ intranges.py
│     │     │  │  │  ├─ LICENSE.md
│     │     │  │  │  ├─ package_data.py
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ uts46data.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ codec.cpython-314.pyc
│     │     │  │  │     ├─ compat.cpython-314.pyc
│     │     │  │  │     ├─ core.cpython-314.pyc
│     │     │  │  │     ├─ idnadata.cpython-314.pyc
│     │     │  │  │     ├─ intranges.cpython-314.pyc
│     │     │  │  │     ├─ package_data.cpython-314.pyc
│     │     │  │  │     ├─ uts46data.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ msgpack
│     │     │  │  │  ├─ COPYING
│     │     │  │  │  ├─ exceptions.py
│     │     │  │  │  ├─ ext.py
│     │     │  │  │  ├─ fallback.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ exceptions.cpython-314.pyc
│     │     │  │  │     ├─ ext.cpython-314.pyc
│     │     │  │  │     ├─ fallback.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ packaging
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ LICENSE.APACHE
│     │     │  │  │  ├─ LICENSE.BSD
│     │     │  │  │  ├─ licenses
│     │     │  │  │  │  ├─ _spdx.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ _spdx.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ markers.py
│     │     │  │  │  ├─ metadata.py
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ requirements.py
│     │     │  │  │  ├─ specifiers.py
│     │     │  │  │  ├─ tags.py
│     │     │  │  │  ├─ utils.py
│     │     │  │  │  ├─ version.py
│     │     │  │  │  ├─ _elffile.py
│     │     │  │  │  ├─ _manylinux.py
│     │     │  │  │  ├─ _musllinux.py
│     │     │  │  │  ├─ _parser.py
│     │     │  │  │  ├─ _structures.py
│     │     │  │  │  ├─ _tokenizer.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ markers.cpython-314.pyc
│     │     │  │  │     ├─ metadata.cpython-314.pyc
│     │     │  │  │     ├─ requirements.cpython-314.pyc
│     │     │  │  │     ├─ specifiers.cpython-314.pyc
│     │     │  │  │     ├─ tags.cpython-314.pyc
│     │     │  │  │     ├─ utils.cpython-314.pyc
│     │     │  │  │     ├─ version.cpython-314.pyc
│     │     │  │  │     ├─ _elffile.cpython-314.pyc
│     │     │  │  │     ├─ _manylinux.cpython-314.pyc
│     │     │  │  │     ├─ _musllinux.cpython-314.pyc
│     │     │  │  │     ├─ _parser.cpython-314.pyc
│     │     │  │  │     ├─ _structures.cpython-314.pyc
│     │     │  │  │     ├─ _tokenizer.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ pkg_resources
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ platformdirs
│     │     │  │  │  ├─ android.py
│     │     │  │  │  ├─ api.py
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ macos.py
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ unix.py
│     │     │  │  │  ├─ version.py
│     │     │  │  │  ├─ windows.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  ├─ __main__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ android.cpython-314.pyc
│     │     │  │  │     ├─ api.cpython-314.pyc
│     │     │  │  │     ├─ macos.cpython-314.pyc
│     │     │  │  │     ├─ unix.cpython-314.pyc
│     │     │  │  │     ├─ version.cpython-314.pyc
│     │     │  │  │     ├─ windows.cpython-314.pyc
│     │     │  │  │     ├─ __init__.cpython-314.pyc
│     │     │  │  │     └─ __main__.cpython-314.pyc
│     │     │  │  ├─ pygments
│     │     │  │  │  ├─ console.py
│     │     │  │  │  ├─ filter.py
│     │     │  │  │  ├─ filters
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ formatter.py
│     │     │  │  │  ├─ formatters
│     │     │  │  │  │  ├─ _mapping.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ _mapping.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ lexer.py
│     │     │  │  │  ├─ lexers
│     │     │  │  │  │  ├─ python.py
│     │     │  │  │  │  ├─ _mapping.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ python.cpython-314.pyc
│     │     │  │  │  │     ├─ _mapping.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ modeline.py
│     │     │  │  │  ├─ plugin.py
│     │     │  │  │  ├─ regexopt.py
│     │     │  │  │  ├─ scanner.py
│     │     │  │  │  ├─ sphinxext.py
│     │     │  │  │  ├─ style.py
│     │     │  │  │  ├─ styles
│     │     │  │  │  │  ├─ _mapping.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ _mapping.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ token.py
│     │     │  │  │  ├─ unistring.py
│     │     │  │  │  ├─ util.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  ├─ __main__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ console.cpython-314.pyc
│     │     │  │  │     ├─ filter.cpython-314.pyc
│     │     │  │  │     ├─ formatter.cpython-314.pyc
│     │     │  │  │     ├─ lexer.cpython-314.pyc
│     │     │  │  │     ├─ modeline.cpython-314.pyc
│     │     │  │  │     ├─ plugin.cpython-314.pyc
│     │     │  │  │     ├─ regexopt.cpython-314.pyc
│     │     │  │  │     ├─ scanner.cpython-314.pyc
│     │     │  │  │     ├─ sphinxext.cpython-314.pyc
│     │     │  │  │     ├─ style.cpython-314.pyc
│     │     │  │  │     ├─ token.cpython-314.pyc
│     │     │  │  │     ├─ unistring.cpython-314.pyc
│     │     │  │  │     ├─ util.cpython-314.pyc
│     │     │  │  │     ├─ __init__.cpython-314.pyc
│     │     │  │  │     └─ __main__.cpython-314.pyc
│     │     │  │  ├─ pyproject_hooks
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ _impl.py
│     │     │  │  │  ├─ _in_process
│     │     │  │  │  │  ├─ _in_process.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ _in_process.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ _impl.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ README.rst
│     │     │  │  ├─ requests
│     │     │  │  │  ├─ adapters.py
│     │     │  │  │  ├─ api.py
│     │     │  │  │  ├─ auth.py
│     │     │  │  │  ├─ certs.py
│     │     │  │  │  ├─ compat.py
│     │     │  │  │  ├─ cookies.py
│     │     │  │  │  ├─ exceptions.py
│     │     │  │  │  ├─ help.py
│     │     │  │  │  ├─ hooks.py
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ models.py
│     │     │  │  │  ├─ packages.py
│     │     │  │  │  ├─ sessions.py
│     │     │  │  │  ├─ status_codes.py
│     │     │  │  │  ├─ structures.py
│     │     │  │  │  ├─ utils.py
│     │     │  │  │  ├─ _internal_utils.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  ├─ __pycache__
│     │     │  │  │  │  ├─ adapters.cpython-314.pyc
│     │     │  │  │  │  ├─ api.cpython-314.pyc
│     │     │  │  │  │  ├─ auth.cpython-314.pyc
│     │     │  │  │  │  ├─ certs.cpython-314.pyc
│     │     │  │  │  │  ├─ compat.cpython-314.pyc
│     │     │  │  │  │  ├─ cookies.cpython-314.pyc
│     │     │  │  │  │  ├─ exceptions.cpython-314.pyc
│     │     │  │  │  │  ├─ help.cpython-314.pyc
│     │     │  │  │  │  ├─ hooks.cpython-314.pyc
│     │     │  │  │  │  ├─ models.cpython-314.pyc
│     │     │  │  │  │  ├─ packages.cpython-314.pyc
│     │     │  │  │  │  ├─ sessions.cpython-314.pyc
│     │     │  │  │  │  ├─ status_codes.cpython-314.pyc
│     │     │  │  │  │  ├─ structures.cpython-314.pyc
│     │     │  │  │  │  ├─ utils.cpython-314.pyc
│     │     │  │  │  │  ├─ _internal_utils.cpython-314.pyc
│     │     │  │  │  │  ├─ __init__.cpython-314.pyc
│     │     │  │  │  │  └─ __version__.cpython-314.pyc
│     │     │  │  │  └─ __version__.py
│     │     │  │  ├─ resolvelib
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ providers.py
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ reporters.py
│     │     │  │  │  ├─ resolvers
│     │     │  │  │  │  ├─ abstract.py
│     │     │  │  │  │  ├─ criterion.py
│     │     │  │  │  │  ├─ exceptions.py
│     │     │  │  │  │  ├─ resolution.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ abstract.cpython-314.pyc
│     │     │  │  │  │     ├─ criterion.cpython-314.pyc
│     │     │  │  │  │     ├─ exceptions.cpython-314.pyc
│     │     │  │  │  │     ├─ resolution.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ structs.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ providers.cpython-314.pyc
│     │     │  │  │     ├─ reporters.cpython-314.pyc
│     │     │  │  │     ├─ structs.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ rich
│     │     │  │  │  ├─ abc.py
│     │     │  │  │  ├─ align.py
│     │     │  │  │  ├─ ansi.py
│     │     │  │  │  ├─ bar.py
│     │     │  │  │  ├─ box.py
│     │     │  │  │  ├─ cells.py
│     │     │  │  │  ├─ color.py
│     │     │  │  │  ├─ color_triplet.py
│     │     │  │  │  ├─ columns.py
│     │     │  │  │  ├─ console.py
│     │     │  │  │  ├─ constrain.py
│     │     │  │  │  ├─ containers.py
│     │     │  │  │  ├─ control.py
│     │     │  │  │  ├─ default_styles.py
│     │     │  │  │  ├─ diagnose.py
│     │     │  │  │  ├─ emoji.py
│     │     │  │  │  ├─ errors.py
│     │     │  │  │  ├─ filesize.py
│     │     │  │  │  ├─ file_proxy.py
│     │     │  │  │  ├─ highlighter.py
│     │     │  │  │  ├─ json.py
│     │     │  │  │  ├─ jupyter.py
│     │     │  │  │  ├─ layout.py
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ live.py
│     │     │  │  │  ├─ live_render.py
│     │     │  │  │  ├─ logging.py
│     │     │  │  │  ├─ markup.py
│     │     │  │  │  ├─ measure.py
│     │     │  │  │  ├─ padding.py
│     │     │  │  │  ├─ pager.py
│     │     │  │  │  ├─ palette.py
│     │     │  │  │  ├─ panel.py
│     │     │  │  │  ├─ pretty.py
│     │     │  │  │  ├─ progress.py
│     │     │  │  │  ├─ progress_bar.py
│     │     │  │  │  ├─ prompt.py
│     │     │  │  │  ├─ protocol.py
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ region.py
│     │     │  │  │  ├─ repr.py
│     │     │  │  │  ├─ rule.py
│     │     │  │  │  ├─ scope.py
│     │     │  │  │  ├─ screen.py
│     │     │  │  │  ├─ segment.py
│     │     │  │  │  ├─ spinner.py
│     │     │  │  │  ├─ status.py
│     │     │  │  │  ├─ style.py
│     │     │  │  │  ├─ styled.py
│     │     │  │  │  ├─ syntax.py
│     │     │  │  │  ├─ table.py
│     │     │  │  │  ├─ terminal_theme.py
│     │     │  │  │  ├─ text.py
│     │     │  │  │  ├─ theme.py
│     │     │  │  │  ├─ themes.py
│     │     │  │  │  ├─ traceback.py
│     │     │  │  │  ├─ tree.py
│     │     │  │  │  ├─ _cell_widths.py
│     │     │  │  │  ├─ _emoji_codes.py
│     │     │  │  │  ├─ _emoji_replace.py
│     │     │  │  │  ├─ _export_format.py
│     │     │  │  │  ├─ _extension.py
│     │     │  │  │  ├─ _fileno.py
│     │     │  │  │  ├─ _inspect.py
│     │     │  │  │  ├─ _log_render.py
│     │     │  │  │  ├─ _loop.py
│     │     │  │  │  ├─ _null_file.py
│     │     │  │  │  ├─ _palettes.py
│     │     │  │  │  ├─ _pick.py
│     │     │  │  │  ├─ _ratio.py
│     │     │  │  │  ├─ _spinners.py
│     │     │  │  │  ├─ _stack.py
│     │     │  │  │  ├─ _timer.py
│     │     │  │  │  ├─ _win32_console.py
│     │     │  │  │  ├─ _windows.py
│     │     │  │  │  ├─ _windows_renderer.py
│     │     │  │  │  ├─ _wrap.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  ├─ __main__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ abc.cpython-314.pyc
│     │     │  │  │     ├─ align.cpython-314.pyc
│     │     │  │  │     ├─ ansi.cpython-314.pyc
│     │     │  │  │     ├─ bar.cpython-314.pyc
│     │     │  │  │     ├─ box.cpython-314.pyc
│     │     │  │  │     ├─ cells.cpython-314.pyc
│     │     │  │  │     ├─ color.cpython-314.pyc
│     │     │  │  │     ├─ color_triplet.cpython-314.pyc
│     │     │  │  │     ├─ columns.cpython-314.pyc
│     │     │  │  │     ├─ console.cpython-314.pyc
│     │     │  │  │     ├─ constrain.cpython-314.pyc
│     │     │  │  │     ├─ containers.cpython-314.pyc
│     │     │  │  │     ├─ control.cpython-314.pyc
│     │     │  │  │     ├─ default_styles.cpython-314.pyc
│     │     │  │  │     ├─ diagnose.cpython-314.pyc
│     │     │  │  │     ├─ emoji.cpython-314.pyc
│     │     │  │  │     ├─ errors.cpython-314.pyc
│     │     │  │  │     ├─ filesize.cpython-314.pyc
│     │     │  │  │     ├─ file_proxy.cpython-314.pyc
│     │     │  │  │     ├─ highlighter.cpython-314.pyc
│     │     │  │  │     ├─ json.cpython-314.pyc
│     │     │  │  │     ├─ jupyter.cpython-314.pyc
│     │     │  │  │     ├─ layout.cpython-314.pyc
│     │     │  │  │     ├─ live.cpython-314.pyc
│     │     │  │  │     ├─ live_render.cpython-314.pyc
│     │     │  │  │     ├─ logging.cpython-314.pyc
│     │     │  │  │     ├─ markup.cpython-314.pyc
│     │     │  │  │     ├─ measure.cpython-314.pyc
│     │     │  │  │     ├─ padding.cpython-314.pyc
│     │     │  │  │     ├─ pager.cpython-314.pyc
│     │     │  │  │     ├─ palette.cpython-314.pyc
│     │     │  │  │     ├─ panel.cpython-314.pyc
│     │     │  │  │     ├─ pretty.cpython-314.pyc
│     │     │  │  │     ├─ progress.cpython-314.pyc
│     │     │  │  │     ├─ progress_bar.cpython-314.pyc
│     │     │  │  │     ├─ prompt.cpython-314.pyc
│     │     │  │  │     ├─ protocol.cpython-314.pyc
│     │     │  │  │     ├─ region.cpython-314.pyc
│     │     │  │  │     ├─ repr.cpython-314.pyc
│     │     │  │  │     ├─ rule.cpython-314.pyc
│     │     │  │  │     ├─ scope.cpython-314.pyc
│     │     │  │  │     ├─ screen.cpython-314.pyc
│     │     │  │  │     ├─ segment.cpython-314.pyc
│     │     │  │  │     ├─ spinner.cpython-314.pyc
│     │     │  │  │     ├─ status.cpython-314.pyc
│     │     │  │  │     ├─ style.cpython-314.pyc
│     │     │  │  │     ├─ styled.cpython-314.pyc
│     │     │  │  │     ├─ syntax.cpython-314.pyc
│     │     │  │  │     ├─ table.cpython-314.pyc
│     │     │  │  │     ├─ terminal_theme.cpython-314.pyc
│     │     │  │  │     ├─ text.cpython-314.pyc
│     │     │  │  │     ├─ theme.cpython-314.pyc
│     │     │  │  │     ├─ themes.cpython-314.pyc
│     │     │  │  │     ├─ traceback.cpython-314.pyc
│     │     │  │  │     ├─ tree.cpython-314.pyc
│     │     │  │  │     ├─ _cell_widths.cpython-314.pyc
│     │     │  │  │     ├─ _emoji_codes.cpython-314.pyc
│     │     │  │  │     ├─ _emoji_replace.cpython-314.pyc
│     │     │  │  │     ├─ _export_format.cpython-314.pyc
│     │     │  │  │     ├─ _extension.cpython-314.pyc
│     │     │  │  │     ├─ _fileno.cpython-314.pyc
│     │     │  │  │     ├─ _inspect.cpython-314.pyc
│     │     │  │  │     ├─ _log_render.cpython-314.pyc
│     │     │  │  │     ├─ _loop.cpython-314.pyc
│     │     │  │  │     ├─ _null_file.cpython-314.pyc
│     │     │  │  │     ├─ _palettes.cpython-314.pyc
│     │     │  │  │     ├─ _pick.cpython-314.pyc
│     │     │  │  │     ├─ _ratio.cpython-314.pyc
│     │     │  │  │     ├─ _spinners.cpython-314.pyc
│     │     │  │  │     ├─ _stack.cpython-314.pyc
│     │     │  │  │     ├─ _timer.cpython-314.pyc
│     │     │  │  │     ├─ _win32_console.cpython-314.pyc
│     │     │  │  │     ├─ _windows.cpython-314.pyc
│     │     │  │  │     ├─ _windows_renderer.cpython-314.pyc
│     │     │  │  │     ├─ _wrap.cpython-314.pyc
│     │     │  │  │     ├─ __init__.cpython-314.pyc
│     │     │  │  │     └─ __main__.cpython-314.pyc
│     │     │  │  ├─ tomli
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ _parser.py
│     │     │  │  │  ├─ _re.py
│     │     │  │  │  ├─ _types.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ _parser.cpython-314.pyc
│     │     │  │  │     ├─ _re.cpython-314.pyc
│     │     │  │  │     ├─ _types.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ tomli_w
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ _writer.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ _writer.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ truststore
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ _api.py
│     │     │  │  │  ├─ _macos.py
│     │     │  │  │  ├─ _openssl.py
│     │     │  │  │  ├─ _ssl_constants.py
│     │     │  │  │  ├─ _windows.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ _api.cpython-314.pyc
│     │     │  │  │     ├─ _macos.cpython-314.pyc
│     │     │  │  │     ├─ _openssl.cpython-314.pyc
│     │     │  │  │     ├─ _ssl_constants.cpython-314.pyc
│     │     │  │  │     ├─ _windows.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ urllib3
│     │     │  │  │  ├─ connection.py
│     │     │  │  │  ├─ connectionpool.py
│     │     │  │  │  ├─ contrib
│     │     │  │  │  │  ├─ appengine.py
│     │     │  │  │  │  ├─ ntlmpool.py
│     │     │  │  │  │  ├─ pyopenssl.py
│     │     │  │  │  │  ├─ securetransport.py
│     │     │  │  │  │  ├─ socks.py
│     │     │  │  │  │  ├─ _appengine_environ.py
│     │     │  │  │  │  ├─ _securetransport
│     │     │  │  │  │  │  ├─ bindings.py
│     │     │  │  │  │  │  ├─ low_level.py
│     │     │  │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  │  └─ __pycache__
│     │     │  │  │  │  │     ├─ bindings.cpython-314.pyc
│     │     │  │  │  │  │     ├─ low_level.cpython-314.pyc
│     │     │  │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ appengine.cpython-314.pyc
│     │     │  │  │  │     ├─ ntlmpool.cpython-314.pyc
│     │     │  │  │  │     ├─ pyopenssl.cpython-314.pyc
│     │     │  │  │  │     ├─ securetransport.cpython-314.pyc
│     │     │  │  │  │     ├─ socks.cpython-314.pyc
│     │     │  │  │  │     ├─ _appengine_environ.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ exceptions.py
│     │     │  │  │  ├─ fields.py
│     │     │  │  │  ├─ filepost.py
│     │     │  │  │  ├─ LICENSE.txt
│     │     │  │  │  ├─ packages
│     │     │  │  │  │  ├─ backports
│     │     │  │  │  │  │  ├─ makefile.py
│     │     │  │  │  │  │  ├─ weakref_finalize.py
│     │     │  │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  │  └─ __pycache__
│     │     │  │  │  │  │     ├─ makefile.cpython-314.pyc
│     │     │  │  │  │  │     ├─ weakref_finalize.cpython-314.pyc
│     │     │  │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  │  ├─ six.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ six.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ poolmanager.py
│     │     │  │  │  ├─ request.py
│     │     │  │  │  ├─ response.py
│     │     │  │  │  ├─ util
│     │     │  │  │  │  ├─ connection.py
│     │     │  │  │  │  ├─ proxy.py
│     │     │  │  │  │  ├─ queue.py
│     │     │  │  │  │  ├─ request.py
│     │     │  │  │  │  ├─ response.py
│     │     │  │  │  │  ├─ retry.py
│     │     │  │  │  │  ├─ ssltransport.py
│     │     │  │  │  │  ├─ ssl_.py
│     │     │  │  │  │  ├─ ssl_match_hostname.py
│     │     │  │  │  │  ├─ timeout.py
│     │     │  │  │  │  ├─ url.py
│     │     │  │  │  │  ├─ wait.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ connection.cpython-314.pyc
│     │     │  │  │  │     ├─ proxy.cpython-314.pyc
│     │     │  │  │  │     ├─ queue.cpython-314.pyc
│     │     │  │  │  │     ├─ request.cpython-314.pyc
│     │     │  │  │  │     ├─ response.cpython-314.pyc
│     │     │  │  │  │     ├─ retry.cpython-314.pyc
│     │     │  │  │  │     ├─ ssltransport.cpython-314.pyc
│     │     │  │  │  │     ├─ ssl_.cpython-314.pyc
│     │     │  │  │  │     ├─ ssl_match_hostname.cpython-314.pyc
│     │     │  │  │  │     ├─ timeout.cpython-314.pyc
│     │     │  │  │  │     ├─ url.cpython-314.pyc
│     │     │  │  │  │     ├─ wait.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ _collections.py
│     │     │  │  │  ├─ _version.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ connection.cpython-314.pyc
│     │     │  │  │     ├─ connectionpool.cpython-314.pyc
│     │     │  │  │     ├─ exceptions.cpython-314.pyc
│     │     │  │  │     ├─ fields.cpython-314.pyc
│     │     │  │  │     ├─ filepost.cpython-314.pyc
│     │     │  │  │     ├─ poolmanager.cpython-314.pyc
│     │     │  │  │     ├─ request.cpython-314.pyc
│     │     │  │  │     ├─ response.cpython-314.pyc
│     │     │  │  │     ├─ _collections.cpython-314.pyc
│     │     │  │  │     ├─ _version.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ vendor.txt
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ __init__.py
│     │     │  ├─ __main__.py
│     │     │  ├─ __pip-runner__.py
│     │     │  └─ __pycache__
│     │     │     ├─ __init__.cpython-314.pyc
│     │     │     ├─ __main__.cpython-314.pyc
│     │     │     └─ __pip-runner__.cpython-314.pyc
│     │     ├─ pip-25.3.dist-info
│     │     │  ├─ entry_points.txt
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  ├─ AUTHORS.txt
│     │     │  │  ├─ LICENSE.txt
│     │     │  │  └─ src
│     │     │  │     └─ pip
│     │     │  │        └─ _vendor
│     │     │  │           ├─ cachecontrol
│     │     │  │           │  └─ LICENSE.txt
│     │     │  │           ├─ certifi
│     │     │  │           │  └─ LICENSE
│     │     │  │           ├─ dependency_groups
│     │     │  │           │  └─ LICENSE.txt
│     │     │  │           ├─ distlib
│     │     │  │           │  └─ LICENSE.txt
│     │     │  │           ├─ distro
│     │     │  │           │  └─ LICENSE
│     │     │  │           ├─ idna
│     │     │  │           │  └─ LICENSE.md
│     │     │  │           ├─ msgpack
│     │     │  │           │  └─ COPYING
│     │     │  │           ├─ packaging
│     │     │  │           │  ├─ LICENSE
│     │     │  │           │  ├─ LICENSE.APACHE
│     │     │  │           │  └─ LICENSE.BSD
│     │     │  │           ├─ pkg_resources
│     │     │  │           │  └─ LICENSE
│     │     │  │           ├─ platformdirs
│     │     │  │           │  └─ LICENSE
│     │     │  │           ├─ pygments
│     │     │  │           │  └─ LICENSE
│     │     │  │           ├─ pyproject_hooks
│     │     │  │           │  └─ LICENSE
│     │     │  │           ├─ requests
│     │     │  │           │  └─ LICENSE
│     │     │  │           ├─ resolvelib
│     │     │  │           │  └─ LICENSE
│     │     │  │           ├─ rich
│     │     │  │           │  └─ LICENSE
│     │     │  │           ├─ tomli
│     │     │  │           │  └─ LICENSE
│     │     │  │           ├─ tomli_w
│     │     │  │           │  └─ LICENSE
│     │     │  │           ├─ truststore
│     │     │  │           │  └─ LICENSE
│     │     │  │           └─ urllib3
│     │     │  │              └─ LICENSE.txt
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ REQUESTED
│     │     │  └─ WHEEL
│     │     ├─ pkg_resources
│     │     │  ├─ api_tests.txt
│     │     │  ├─ py.typed
│     │     │  ├─ tests
│     │     │  │  ├─ data
│     │     │  │  │  ├─ my-test-package-source
│     │     │  │  │  │  ├─ setup.cfg
│     │     │  │  │  │  ├─ setup.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     └─ setup.cpython-314.pyc
│     │     │  │  │  ├─ my-test-package-zip
│     │     │  │  │  │  └─ my-test-package.zip
│     │     │  │  │  ├─ my-test-package_unpacked-egg
│     │     │  │  │  │  └─ my_test_package-1.0-py3.7.egg
│     │     │  │  │  │     └─ EGG-INFO
│     │     │  │  │  │        ├─ dependency_links.txt
│     │     │  │  │  │        ├─ PKG-INFO
│     │     │  │  │  │        ├─ SOURCES.txt
│     │     │  │  │  │        ├─ top_level.txt
│     │     │  │  │  │        └─ zip-safe
│     │     │  │  │  └─ my-test-package_zipped-egg
│     │     │  │  │     └─ my_test_package-1.0-py3.7.egg
│     │     │  │  ├─ test_find_distributions.py
│     │     │  │  ├─ test_integration_zope_interface.py
│     │     │  │  ├─ test_markers.py
│     │     │  │  ├─ test_pkg_resources.py
│     │     │  │  ├─ test_resources.py
│     │     │  │  ├─ test_working_set.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ test_find_distributions.cpython-314.pyc
│     │     │  │     ├─ test_integration_zope_interface.cpython-314.pyc
│     │     │  │     ├─ test_markers.cpython-314.pyc
│     │     │  │     ├─ test_pkg_resources.cpython-314.pyc
│     │     │  │     ├─ test_resources.cpython-314.pyc
│     │     │  │     ├─ test_working_set.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ psycopg2
│     │     │  ├─ errorcodes.py
│     │     │  ├─ errors.py
│     │     │  ├─ extensions.py
│     │     │  ├─ extras.py
│     │     │  ├─ pool.py
│     │     │  ├─ sql.py
│     │     │  ├─ tz.py
│     │     │  ├─ _ipaddress.py
│     │     │  ├─ _json.py
│     │     │  ├─ _psycopg.cp314-win_amd64.pyd
│     │     │  ├─ _range.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ errorcodes.cpython-314.pyc
│     │     │     ├─ errors.cpython-314.pyc
│     │     │     ├─ extensions.cpython-314.pyc
│     │     │     ├─ extras.cpython-314.pyc
│     │     │     ├─ pool.cpython-314.pyc
│     │     │     ├─ sql.cpython-314.pyc
│     │     │     ├─ tz.cpython-314.pyc
│     │     │     ├─ _ipaddress.cpython-314.pyc
│     │     │     ├─ _json.cpython-314.pyc
│     │     │     ├─ _range.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ psycopg2_binary-2.9.11.dist-info
│     │     │  ├─ DELVEWHEEL
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ REQUESTED
│     │     │  ├─ top_level.txt
│     │     │  └─ WHEEL
│     │     ├─ psycopg2_binary.libs
│     │     │  ├─ libcrypto-3-x64-ffd7a9c6f04fd43163d4af80fa0e5643.dll
│     │     │  ├─ libpq-6403524fab916a7d13e87bc746be2a9e.dll
│     │     │  └─ libssl-3-x64-315f24bcb7a55f987a0b36e7c5ba119a.dll
│     │     ├─ python_dotenv-1.0.0.dist-info
│     │     │  ├─ entry_points.txt
│     │     │  ├─ INSTALLER
│     │     │  ├─ LICENSE
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ REQUESTED
│     │     │  ├─ top_level.txt
│     │     │  └─ WHEEL
│     │     ├─ requests
│     │     │  ├─ adapters.py
│     │     │  ├─ api.py
│     │     │  ├─ auth.py
│     │     │  ├─ certs.py
│     │     │  ├─ compat.py
│     │     │  ├─ cookies.py
│     │     │  ├─ exceptions.py
│     │     │  ├─ help.py
│     │     │  ├─ hooks.py
│     │     │  ├─ models.py
│     │     │  ├─ packages.py
│     │     │  ├─ sessions.py
│     │     │  ├─ status_codes.py
│     │     │  ├─ structures.py
│     │     │  ├─ utils.py
│     │     │  ├─ _internal_utils.py
│     │     │  ├─ __init__.py
│     │     │  ├─ __pycache__
│     │     │  │  ├─ adapters.cpython-314.pyc
│     │     │  │  ├─ api.cpython-314.pyc
│     │     │  │  ├─ auth.cpython-314.pyc
│     │     │  │  ├─ certs.cpython-314.pyc
│     │     │  │  ├─ compat.cpython-314.pyc
│     │     │  │  ├─ cookies.cpython-314.pyc
│     │     │  │  ├─ exceptions.cpython-314.pyc
│     │     │  │  ├─ help.cpython-314.pyc
│     │     │  │  ├─ hooks.cpython-314.pyc
│     │     │  │  ├─ models.cpython-314.pyc
│     │     │  │  ├─ packages.cpython-314.pyc
│     │     │  │  ├─ sessions.cpython-314.pyc
│     │     │  │  ├─ status_codes.cpython-314.pyc
│     │     │  │  ├─ structures.cpython-314.pyc
│     │     │  │  ├─ utils.cpython-314.pyc
│     │     │  │  ├─ _internal_utils.cpython-314.pyc
│     │     │  │  ├─ __init__.cpython-314.pyc
│     │     │  │  └─ __version__.cpython-314.pyc
│     │     │  └─ __version__.py
│     │     ├─ requests-2.31.0.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ LICENSE
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ REQUESTED
│     │     │  ├─ top_level.txt
│     │     │  └─ WHEEL
│     │     ├─ setuptools
│     │     │  ├─ archive_util.py
│     │     │  ├─ build_meta.py
│     │     │  ├─ cli-32.exe
│     │     │  ├─ cli-64.exe
│     │     │  ├─ cli-arm64.exe
│     │     │  ├─ cli.exe
│     │     │  ├─ command
│     │     │  │  ├─ alias.py
│     │     │  │  ├─ bdist_egg.py
│     │     │  │  ├─ bdist_rpm.py
│     │     │  │  ├─ bdist_wheel.py
│     │     │  │  ├─ build.py
│     │     │  │  ├─ build_clib.py
│     │     │  │  ├─ build_ext.py
│     │     │  │  ├─ build_py.py
│     │     │  │  ├─ develop.py
│     │     │  │  ├─ dist_info.py
│     │     │  │  ├─ easy_install.py
│     │     │  │  ├─ editable_wheel.py
│     │     │  │  ├─ egg_info.py
│     │     │  │  ├─ install.py
│     │     │  │  ├─ install_egg_info.py
│     │     │  │  ├─ install_lib.py
│     │     │  │  ├─ install_scripts.py
│     │     │  │  ├─ launcher manifest.xml
│     │     │  │  ├─ rotate.py
│     │     │  │  ├─ saveopts.py
│     │     │  │  ├─ sdist.py
│     │     │  │  ├─ setopt.py
│     │     │  │  ├─ test.py
│     │     │  │  ├─ _requirestxt.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ alias.cpython-314.pyc
│     │     │  │     ├─ bdist_egg.cpython-314.pyc
│     │     │  │     ├─ bdist_rpm.cpython-314.pyc
│     │     │  │     ├─ bdist_wheel.cpython-314.pyc
│     │     │  │     ├─ build.cpython-314.pyc
│     │     │  │     ├─ build_clib.cpython-314.pyc
│     │     │  │     ├─ build_ext.cpython-314.pyc
│     │     │  │     ├─ build_py.cpython-314.pyc
│     │     │  │     ├─ develop.cpython-314.pyc
│     │     │  │     ├─ dist_info.cpython-314.pyc
│     │     │  │     ├─ easy_install.cpython-314.pyc
│     │     │  │     ├─ editable_wheel.cpython-314.pyc
│     │     │  │     ├─ egg_info.cpython-314.pyc
│     │     │  │     ├─ install.cpython-314.pyc
│     │     │  │     ├─ install_egg_info.cpython-314.pyc
│     │     │  │     ├─ install_lib.cpython-314.pyc
│     │     │  │     ├─ install_scripts.cpython-314.pyc
│     │     │  │     ├─ rotate.cpython-314.pyc
│     │     │  │     ├─ saveopts.cpython-314.pyc
│     │     │  │     ├─ sdist.cpython-314.pyc
│     │     │  │     ├─ setopt.cpython-314.pyc
│     │     │  │     ├─ test.cpython-314.pyc
│     │     │  │     ├─ _requirestxt.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ compat
│     │     │  │  ├─ py310.py
│     │     │  │  ├─ py311.py
│     │     │  │  ├─ py312.py
│     │     │  │  ├─ py39.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ py310.cpython-314.pyc
│     │     │  │     ├─ py311.cpython-314.pyc
│     │     │  │     ├─ py312.cpython-314.pyc
│     │     │  │     ├─ py39.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ config
│     │     │  │  ├─ distutils.schema.json
│     │     │  │  ├─ expand.py
│     │     │  │  ├─ NOTICE
│     │     │  │  ├─ pyprojecttoml.py
│     │     │  │  ├─ setupcfg.py
│     │     │  │  ├─ setuptools.schema.json
│     │     │  │  ├─ _apply_pyprojecttoml.py
│     │     │  │  ├─ _validate_pyproject
│     │     │  │  │  ├─ error_reporting.py
│     │     │  │  │  ├─ extra_validations.py
│     │     │  │  │  ├─ fastjsonschema_exceptions.py
│     │     │  │  │  ├─ fastjsonschema_validations.py
│     │     │  │  │  ├─ formats.py
│     │     │  │  │  ├─ NOTICE
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ error_reporting.cpython-314.pyc
│     │     │  │  │     ├─ extra_validations.cpython-314.pyc
│     │     │  │  │     ├─ fastjsonschema_exceptions.cpython-314.pyc
│     │     │  │  │     ├─ fastjsonschema_validations.cpython-314.pyc
│     │     │  │  │     ├─ formats.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ expand.cpython-314.pyc
│     │     │  │     ├─ pyprojecttoml.cpython-314.pyc
│     │     │  │     ├─ setupcfg.cpython-314.pyc
│     │     │  │     ├─ _apply_pyprojecttoml.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ depends.py
│     │     │  ├─ discovery.py
│     │     │  ├─ dist.py
│     │     │  ├─ errors.py
│     │     │  ├─ extension.py
│     │     │  ├─ glob.py
│     │     │  ├─ gui-32.exe
│     │     │  ├─ gui-64.exe
│     │     │  ├─ gui-arm64.exe
│     │     │  ├─ gui.exe
│     │     │  ├─ installer.py
│     │     │  ├─ launch.py
│     │     │  ├─ logging.py
│     │     │  ├─ modified.py
│     │     │  ├─ monkey.py
│     │     │  ├─ msvc.py
│     │     │  ├─ namespaces.py
│     │     │  ├─ script (dev).tmpl
│     │     │  ├─ script.tmpl
│     │     │  ├─ tests
│     │     │  │  ├─ compat
│     │     │  │  │  ├─ py39.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ py39.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ config
│     │     │  │  │  ├─ downloads
│     │     │  │  │  │  ├─ preload.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ preload.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ setupcfg_examples.txt
│     │     │  │  │  ├─ test_apply_pyprojecttoml.py
│     │     │  │  │  ├─ test_expand.py
│     │     │  │  │  ├─ test_pyprojecttoml.py
│     │     │  │  │  ├─ test_pyprojecttoml_dynamic_deps.py
│     │     │  │  │  ├─ test_setupcfg.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ test_apply_pyprojecttoml.cpython-314.pyc
│     │     │  │  │     ├─ test_expand.cpython-314.pyc
│     │     │  │  │     ├─ test_pyprojecttoml.cpython-314.pyc
│     │     │  │  │     ├─ test_pyprojecttoml_dynamic_deps.cpython-314.pyc
│     │     │  │  │     ├─ test_setupcfg.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ contexts.py
│     │     │  │  ├─ environment.py
│     │     │  │  ├─ fixtures.py
│     │     │  │  ├─ indexes
│     │     │  │  │  └─ test_links_priority
│     │     │  │  │     ├─ external.html
│     │     │  │  │     └─ simple
│     │     │  │  │        └─ foobar
│     │     │  │  │           └─ index.html
│     │     │  │  ├─ integration
│     │     │  │  │  ├─ helpers.py
│     │     │  │  │  ├─ test_pbr.py
│     │     │  │  │  ├─ test_pip_install_sdist.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ helpers.cpython-314.pyc
│     │     │  │  │     ├─ test_pbr.cpython-314.pyc
│     │     │  │  │     ├─ test_pip_install_sdist.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ mod_with_constant.py
│     │     │  │  ├─ namespaces.py
│     │     │  │  ├─ script-with-bom.py
│     │     │  │  ├─ test_archive_util.py
│     │     │  │  ├─ test_bdist_deprecations.py
│     │     │  │  ├─ test_bdist_egg.py
│     │     │  │  ├─ test_bdist_wheel.py
│     │     │  │  ├─ test_build.py
│     │     │  │  ├─ test_build_clib.py
│     │     │  │  ├─ test_build_ext.py
│     │     │  │  ├─ test_build_meta.py
│     │     │  │  ├─ test_build_py.py
│     │     │  │  ├─ test_config_discovery.py
│     │     │  │  ├─ test_core_metadata.py
│     │     │  │  ├─ test_depends.py
│     │     │  │  ├─ test_develop.py
│     │     │  │  ├─ test_dist.py
│     │     │  │  ├─ test_distutils_adoption.py
│     │     │  │  ├─ test_dist_info.py
│     │     │  │  ├─ test_editable_install.py
│     │     │  │  ├─ test_egg_info.py
│     │     │  │  ├─ test_extern.py
│     │     │  │  ├─ test_find_packages.py
│     │     │  │  ├─ test_find_py_modules.py
│     │     │  │  ├─ test_glob.py
│     │     │  │  ├─ test_install_scripts.py
│     │     │  │  ├─ test_logging.py
│     │     │  │  ├─ test_manifest.py
│     │     │  │  ├─ test_namespaces.py
│     │     │  │  ├─ test_scripts.py
│     │     │  │  ├─ test_sdist.py
│     │     │  │  ├─ test_setopt.py
│     │     │  │  ├─ test_setuptools.py
│     │     │  │  ├─ test_shutil_wrapper.py
│     │     │  │  ├─ test_unicode_utils.py
│     │     │  │  ├─ test_virtualenv.py
│     │     │  │  ├─ test_warnings.py
│     │     │  │  ├─ test_wheel.py
│     │     │  │  ├─ test_windows_wrappers.py
│     │     │  │  ├─ text.py
│     │     │  │  ├─ textwrap.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ contexts.cpython-314.pyc
│     │     │  │     ├─ environment.cpython-314.pyc
│     │     │  │     ├─ fixtures.cpython-314.pyc
│     │     │  │     ├─ mod_with_constant.cpython-314.pyc
│     │     │  │     ├─ namespaces.cpython-314.pyc
│     │     │  │     ├─ script-with-bom.cpython-314.pyc
│     │     │  │     ├─ test_archive_util.cpython-314.pyc
│     │     │  │     ├─ test_bdist_deprecations.cpython-314.pyc
│     │     │  │     ├─ test_bdist_egg.cpython-314.pyc
│     │     │  │     ├─ test_bdist_wheel.cpython-314.pyc
│     │     │  │     ├─ test_build.cpython-314.pyc
│     │     │  │     ├─ test_build_clib.cpython-314.pyc
│     │     │  │     ├─ test_build_ext.cpython-314.pyc
│     │     │  │     ├─ test_build_meta.cpython-314.pyc
│     │     │  │     ├─ test_build_py.cpython-314.pyc
│     │     │  │     ├─ test_config_discovery.cpython-314.pyc
│     │     │  │     ├─ test_core_metadata.cpython-314.pyc
│     │     │  │     ├─ test_depends.cpython-314.pyc
│     │     │  │     ├─ test_develop.cpython-314.pyc
│     │     │  │     ├─ test_dist.cpython-314.pyc
│     │     │  │     ├─ test_distutils_adoption.cpython-314.pyc
│     │     │  │     ├─ test_dist_info.cpython-314.pyc
│     │     │  │     ├─ test_editable_install.cpython-314.pyc
│     │     │  │     ├─ test_egg_info.cpython-314.pyc
│     │     │  │     ├─ test_extern.cpython-314.pyc
│     │     │  │     ├─ test_find_packages.cpython-314.pyc
│     │     │  │     ├─ test_find_py_modules.cpython-314.pyc
│     │     │  │     ├─ test_glob.cpython-314.pyc
│     │     │  │     ├─ test_install_scripts.cpython-314.pyc
│     │     │  │     ├─ test_logging.cpython-314.pyc
│     │     │  │     ├─ test_manifest.cpython-314.pyc
│     │     │  │     ├─ test_namespaces.cpython-314.pyc
│     │     │  │     ├─ test_scripts.cpython-314.pyc
│     │     │  │     ├─ test_sdist.cpython-314.pyc
│     │     │  │     ├─ test_setopt.cpython-314.pyc
│     │     │  │     ├─ test_setuptools.cpython-314.pyc
│     │     │  │     ├─ test_shutil_wrapper.cpython-314.pyc
│     │     │  │     ├─ test_unicode_utils.cpython-314.pyc
│     │     │  │     ├─ test_virtualenv.cpython-314.pyc
│     │     │  │     ├─ test_warnings.cpython-314.pyc
│     │     │  │     ├─ test_wheel.cpython-314.pyc
│     │     │  │     ├─ test_windows_wrappers.cpython-314.pyc
│     │     │  │     ├─ text.cpython-314.pyc
│     │     │  │     ├─ textwrap.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ unicode_utils.py
│     │     │  ├─ version.py
│     │     │  ├─ warnings.py
│     │     │  ├─ wheel.py
│     │     │  ├─ windows_support.py
│     │     │  ├─ _core_metadata.py
│     │     │  ├─ _discovery.py
│     │     │  ├─ _distutils
│     │     │  │  ├─ archive_util.py
│     │     │  │  ├─ ccompiler.py
│     │     │  │  ├─ cmd.py
│     │     │  │  ├─ command
│     │     │  │  │  ├─ bdist.py
│     │     │  │  │  ├─ bdist_dumb.py
│     │     │  │  │  ├─ bdist_rpm.py
│     │     │  │  │  ├─ build.py
│     │     │  │  │  ├─ build_clib.py
│     │     │  │  │  ├─ build_ext.py
│     │     │  │  │  ├─ build_py.py
│     │     │  │  │  ├─ build_scripts.py
│     │     │  │  │  ├─ check.py
│     │     │  │  │  ├─ clean.py
│     │     │  │  │  ├─ config.py
│     │     │  │  │  ├─ install.py
│     │     │  │  │  ├─ install_data.py
│     │     │  │  │  ├─ install_egg_info.py
│     │     │  │  │  ├─ install_headers.py
│     │     │  │  │  ├─ install_lib.py
│     │     │  │  │  ├─ install_scripts.py
│     │     │  │  │  ├─ sdist.py
│     │     │  │  │  ├─ _framework_compat.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ bdist.cpython-314.pyc
│     │     │  │  │     ├─ bdist_dumb.cpython-314.pyc
│     │     │  │  │     ├─ bdist_rpm.cpython-314.pyc
│     │     │  │  │     ├─ build.cpython-314.pyc
│     │     │  │  │     ├─ build_clib.cpython-314.pyc
│     │     │  │  │     ├─ build_ext.cpython-314.pyc
│     │     │  │  │     ├─ build_py.cpython-314.pyc
│     │     │  │  │     ├─ build_scripts.cpython-314.pyc
│     │     │  │  │     ├─ check.cpython-314.pyc
│     │     │  │  │     ├─ clean.cpython-314.pyc
│     │     │  │  │     ├─ config.cpython-314.pyc
│     │     │  │  │     ├─ install.cpython-314.pyc
│     │     │  │  │     ├─ install_data.cpython-314.pyc
│     │     │  │  │     ├─ install_egg_info.cpython-314.pyc
│     │     │  │  │     ├─ install_headers.cpython-314.pyc
│     │     │  │  │     ├─ install_lib.cpython-314.pyc
│     │     │  │  │     ├─ install_scripts.cpython-314.pyc
│     │     │  │  │     ├─ sdist.cpython-314.pyc
│     │     │  │  │     ├─ _framework_compat.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ compat
│     │     │  │  │  ├─ numpy.py
│     │     │  │  │  ├─ py39.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ numpy.cpython-314.pyc
│     │     │  │  │     ├─ py39.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ compilers
│     │     │  │  │  └─ C
│     │     │  │  │     ├─ base.py
│     │     │  │  │     ├─ cygwin.py
│     │     │  │  │     ├─ errors.py
│     │     │  │  │     ├─ msvc.py
│     │     │  │  │     ├─ tests
│     │     │  │  │     │  ├─ test_base.py
│     │     │  │  │     │  ├─ test_cygwin.py
│     │     │  │  │     │  ├─ test_mingw.py
│     │     │  │  │     │  ├─ test_msvc.py
│     │     │  │  │     │  ├─ test_unix.py
│     │     │  │  │     │  └─ __pycache__
│     │     │  │  │     │     ├─ test_base.cpython-314.pyc
│     │     │  │  │     │     ├─ test_cygwin.cpython-314.pyc
│     │     │  │  │     │     ├─ test_mingw.cpython-314.pyc
│     │     │  │  │     │     ├─ test_msvc.cpython-314.pyc
│     │     │  │  │     │     └─ test_unix.cpython-314.pyc
│     │     │  │  │     ├─ unix.py
│     │     │  │  │     ├─ zos.py
│     │     │  │  │     └─ __pycache__
│     │     │  │  │        ├─ base.cpython-314.pyc
│     │     │  │  │        ├─ cygwin.cpython-314.pyc
│     │     │  │  │        ├─ errors.cpython-314.pyc
│     │     │  │  │        ├─ msvc.cpython-314.pyc
│     │     │  │  │        ├─ unix.cpython-314.pyc
│     │     │  │  │        └─ zos.cpython-314.pyc
│     │     │  │  ├─ core.py
│     │     │  │  ├─ cygwinccompiler.py
│     │     │  │  ├─ debug.py
│     │     │  │  ├─ dep_util.py
│     │     │  │  ├─ dir_util.py
│     │     │  │  ├─ dist.py
│     │     │  │  ├─ errors.py
│     │     │  │  ├─ extension.py
│     │     │  │  ├─ fancy_getopt.py
│     │     │  │  ├─ filelist.py
│     │     │  │  ├─ file_util.py
│     │     │  │  ├─ log.py
│     │     │  │  ├─ spawn.py
│     │     │  │  ├─ sysconfig.py
│     │     │  │  ├─ tests
│     │     │  │  │  ├─ compat
│     │     │  │  │  │  ├─ py39.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ py39.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ support.py
│     │     │  │  │  ├─ test_archive_util.py
│     │     │  │  │  ├─ test_bdist.py
│     │     │  │  │  ├─ test_bdist_dumb.py
│     │     │  │  │  ├─ test_bdist_rpm.py
│     │     │  │  │  ├─ test_build.py
│     │     │  │  │  ├─ test_build_clib.py
│     │     │  │  │  ├─ test_build_ext.py
│     │     │  │  │  ├─ test_build_py.py
│     │     │  │  │  ├─ test_build_scripts.py
│     │     │  │  │  ├─ test_check.py
│     │     │  │  │  ├─ test_clean.py
│     │     │  │  │  ├─ test_cmd.py
│     │     │  │  │  ├─ test_config_cmd.py
│     │     │  │  │  ├─ test_core.py
│     │     │  │  │  ├─ test_dir_util.py
│     │     │  │  │  ├─ test_dist.py
│     │     │  │  │  ├─ test_extension.py
│     │     │  │  │  ├─ test_filelist.py
│     │     │  │  │  ├─ test_file_util.py
│     │     │  │  │  ├─ test_install.py
│     │     │  │  │  ├─ test_install_data.py
│     │     │  │  │  ├─ test_install_headers.py
│     │     │  │  │  ├─ test_install_lib.py
│     │     │  │  │  ├─ test_install_scripts.py
│     │     │  │  │  ├─ test_log.py
│     │     │  │  │  ├─ test_modified.py
│     │     │  │  │  ├─ test_sdist.py
│     │     │  │  │  ├─ test_spawn.py
│     │     │  │  │  ├─ test_sysconfig.py
│     │     │  │  │  ├─ test_text_file.py
│     │     │  │  │  ├─ test_util.py
│     │     │  │  │  ├─ test_version.py
│     │     │  │  │  ├─ test_versionpredicate.py
│     │     │  │  │  ├─ unix_compat.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ support.cpython-314.pyc
│     │     │  │  │     ├─ test_archive_util.cpython-314.pyc
│     │     │  │  │     ├─ test_bdist.cpython-314.pyc
│     │     │  │  │     ├─ test_bdist_dumb.cpython-314.pyc
│     │     │  │  │     ├─ test_bdist_rpm.cpython-314.pyc
│     │     │  │  │     ├─ test_build.cpython-314.pyc
│     │     │  │  │     ├─ test_build_clib.cpython-314.pyc
│     │     │  │  │     ├─ test_build_ext.cpython-314.pyc
│     │     │  │  │     ├─ test_build_py.cpython-314.pyc
│     │     │  │  │     ├─ test_build_scripts.cpython-314.pyc
│     │     │  │  │     ├─ test_check.cpython-314.pyc
│     │     │  │  │     ├─ test_clean.cpython-314.pyc
│     │     │  │  │     ├─ test_cmd.cpython-314.pyc
│     │     │  │  │     ├─ test_config_cmd.cpython-314.pyc
│     │     │  │  │     ├─ test_core.cpython-314.pyc
│     │     │  │  │     ├─ test_dir_util.cpython-314.pyc
│     │     │  │  │     ├─ test_dist.cpython-314.pyc
│     │     │  │  │     ├─ test_extension.cpython-314.pyc
│     │     │  │  │     ├─ test_filelist.cpython-314.pyc
│     │     │  │  │     ├─ test_file_util.cpython-314.pyc
│     │     │  │  │     ├─ test_install.cpython-314.pyc
│     │     │  │  │     ├─ test_install_data.cpython-314.pyc
│     │     │  │  │     ├─ test_install_headers.cpython-314.pyc
│     │     │  │  │     ├─ test_install_lib.cpython-314.pyc
│     │     │  │  │     ├─ test_install_scripts.cpython-314.pyc
│     │     │  │  │     ├─ test_log.cpython-314.pyc
│     │     │  │  │     ├─ test_modified.cpython-314.pyc
│     │     │  │  │     ├─ test_sdist.cpython-314.pyc
│     │     │  │  │     ├─ test_spawn.cpython-314.pyc
│     │     │  │  │     ├─ test_sysconfig.cpython-314.pyc
│     │     │  │  │     ├─ test_text_file.cpython-314.pyc
│     │     │  │  │     ├─ test_util.cpython-314.pyc
│     │     │  │  │     ├─ test_version.cpython-314.pyc
│     │     │  │  │     ├─ test_versionpredicate.cpython-314.pyc
│     │     │  │  │     ├─ unix_compat.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ text_file.py
│     │     │  │  ├─ unixccompiler.py
│     │     │  │  ├─ util.py
│     │     │  │  ├─ version.py
│     │     │  │  ├─ versionpredicate.py
│     │     │  │  ├─ zosccompiler.py
│     │     │  │  ├─ _log.py
│     │     │  │  ├─ _macos_compat.py
│     │     │  │  ├─ _modified.py
│     │     │  │  ├─ _msvccompiler.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ archive_util.cpython-314.pyc
│     │     │  │     ├─ ccompiler.cpython-314.pyc
│     │     │  │     ├─ cmd.cpython-314.pyc
│     │     │  │     ├─ core.cpython-314.pyc
│     │     │  │     ├─ cygwinccompiler.cpython-314.pyc
│     │     │  │     ├─ debug.cpython-314.pyc
│     │     │  │     ├─ dep_util.cpython-314.pyc
│     │     │  │     ├─ dir_util.cpython-314.pyc
│     │     │  │     ├─ dist.cpython-314.pyc
│     │     │  │     ├─ errors.cpython-314.pyc
│     │     │  │     ├─ extension.cpython-314.pyc
│     │     │  │     ├─ fancy_getopt.cpython-314.pyc
│     │     │  │     ├─ filelist.cpython-314.pyc
│     │     │  │     ├─ file_util.cpython-314.pyc
│     │     │  │     ├─ log.cpython-314.pyc
│     │     │  │     ├─ spawn.cpython-314.pyc
│     │     │  │     ├─ sysconfig.cpython-314.pyc
│     │     │  │     ├─ text_file.cpython-314.pyc
│     │     │  │     ├─ unixccompiler.cpython-314.pyc
│     │     │  │     ├─ util.cpython-314.pyc
│     │     │  │     ├─ version.cpython-314.pyc
│     │     │  │     ├─ versionpredicate.cpython-314.pyc
│     │     │  │     ├─ zosccompiler.cpython-314.pyc
│     │     │  │     ├─ _log.cpython-314.pyc
│     │     │  │     ├─ _macos_compat.cpython-314.pyc
│     │     │  │     ├─ _modified.cpython-314.pyc
│     │     │  │     ├─ _msvccompiler.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ _entry_points.py
│     │     │  ├─ _imp.py
│     │     │  ├─ _importlib.py
│     │     │  ├─ _itertools.py
│     │     │  ├─ _normalization.py
│     │     │  ├─ _path.py
│     │     │  ├─ _reqs.py
│     │     │  ├─ _scripts.py
│     │     │  ├─ _shutil.py
│     │     │  ├─ _static.py
│     │     │  ├─ _vendor
│     │     │  │  ├─ autocommand
│     │     │  │  │  ├─ autoasync.py
│     │     │  │  │  ├─ autocommand.py
│     │     │  │  │  ├─ automain.py
│     │     │  │  │  ├─ autoparse.py
│     │     │  │  │  ├─ errors.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ autoasync.cpython-314.pyc
│     │     │  │  │     ├─ autocommand.cpython-314.pyc
│     │     │  │  │     ├─ automain.cpython-314.pyc
│     │     │  │  │     ├─ autoparse.cpython-314.pyc
│     │     │  │  │     ├─ errors.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ autocommand-2.2.2.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ top_level.txt
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ backports
│     │     │  │  │  ├─ tarfile
│     │     │  │  │  │  ├─ compat
│     │     │  │  │  │  │  ├─ py38.py
│     │     │  │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  │  └─ __pycache__
│     │     │  │  │  │  │     ├─ py38.cpython-314.pyc
│     │     │  │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  ├─ __main__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ __init__.cpython-314.pyc
│     │     │  │  │  │     └─ __main__.cpython-314.pyc
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ backports.tarfile-1.2.0.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ REQUESTED
│     │     │  │  │  ├─ top_level.txt
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ importlib_metadata
│     │     │  │  │  ├─ compat
│     │     │  │  │  │  ├─ py311.py
│     │     │  │  │  │  ├─ py39.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ py311.cpython-314.pyc
│     │     │  │  │  │     ├─ py39.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ diagnose.py
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ _adapters.py
│     │     │  │  │  ├─ _collections.py
│     │     │  │  │  ├─ _compat.py
│     │     │  │  │  ├─ _functools.py
│     │     │  │  │  ├─ _itertools.py
│     │     │  │  │  ├─ _meta.py
│     │     │  │  │  ├─ _text.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ diagnose.cpython-314.pyc
│     │     │  │  │     ├─ _adapters.cpython-314.pyc
│     │     │  │  │     ├─ _collections.cpython-314.pyc
│     │     │  │  │     ├─ _compat.cpython-314.pyc
│     │     │  │  │     ├─ _functools.cpython-314.pyc
│     │     │  │  │     ├─ _itertools.cpython-314.pyc
│     │     │  │  │     ├─ _meta.cpython-314.pyc
│     │     │  │  │     ├─ _text.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ importlib_metadata-8.0.0.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ REQUESTED
│     │     │  │  │  ├─ top_level.txt
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ inflect
│     │     │  │  │  ├─ compat
│     │     │  │  │  │  ├─ py38.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ py38.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ inflect-7.3.1.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ top_level.txt
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ jaraco
│     │     │  │  │  ├─ collections
│     │     │  │  │  │  ├─ py.typed
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ context.py
│     │     │  │  │  ├─ functools
│     │     │  │  │  │  ├─ py.typed
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  ├─ __init__.pyi
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ text
│     │     │  │  │  │  ├─ layouts.py
│     │     │  │  │  │  ├─ Lorem ipsum.txt
│     │     │  │  │  │  ├─ show-newlines.py
│     │     │  │  │  │  ├─ strip-prefix.py
│     │     │  │  │  │  ├─ to-dvorak.py
│     │     │  │  │  │  ├─ to-qwerty.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ layouts.cpython-314.pyc
│     │     │  │  │  │     ├─ show-newlines.cpython-314.pyc
│     │     │  │  │  │     ├─ strip-prefix.cpython-314.pyc
│     │     │  │  │  │     ├─ to-dvorak.cpython-314.pyc
│     │     │  │  │  │     ├─ to-qwerty.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     └─ context.cpython-314.pyc
│     │     │  │  ├─ jaraco.collections-5.1.0.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ REQUESTED
│     │     │  │  │  ├─ top_level.txt
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ jaraco.context-5.3.0.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ top_level.txt
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ jaraco.functools-4.0.1.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ top_level.txt
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ jaraco.text-3.12.1.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ REQUESTED
│     │     │  │  │  ├─ top_level.txt
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ more_itertools
│     │     │  │  │  ├─ more.py
│     │     │  │  │  ├─ more.pyi
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ recipes.py
│     │     │  │  │  ├─ recipes.pyi
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  ├─ __init__.pyi
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ more.cpython-314.pyc
│     │     │  │  │     ├─ recipes.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ more_itertools-10.3.0.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ REQUESTED
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ packaging
│     │     │  │  │  ├─ licenses
│     │     │  │  │  │  ├─ _spdx.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ _spdx.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ markers.py
│     │     │  │  │  ├─ metadata.py
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ requirements.py
│     │     │  │  │  ├─ specifiers.py
│     │     │  │  │  ├─ tags.py
│     │     │  │  │  ├─ utils.py
│     │     │  │  │  ├─ version.py
│     │     │  │  │  ├─ _elffile.py
│     │     │  │  │  ├─ _manylinux.py
│     │     │  │  │  ├─ _musllinux.py
│     │     │  │  │  ├─ _parser.py
│     │     │  │  │  ├─ _structures.py
│     │     │  │  │  ├─ _tokenizer.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ markers.cpython-314.pyc
│     │     │  │  │     ├─ metadata.cpython-314.pyc
│     │     │  │  │     ├─ requirements.cpython-314.pyc
│     │     │  │  │     ├─ specifiers.cpython-314.pyc
│     │     │  │  │     ├─ tags.cpython-314.pyc
│     │     │  │  │     ├─ utils.cpython-314.pyc
│     │     │  │  │     ├─ version.cpython-314.pyc
│     │     │  │  │     ├─ _elffile.cpython-314.pyc
│     │     │  │  │     ├─ _manylinux.cpython-314.pyc
│     │     │  │  │     ├─ _musllinux.cpython-314.pyc
│     │     │  │  │     ├─ _parser.cpython-314.pyc
│     │     │  │  │     ├─ _structures.cpython-314.pyc
│     │     │  │  │     ├─ _tokenizer.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ packaging-24.2.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ LICENSE.APACHE
│     │     │  │  │  ├─ LICENSE.BSD
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ REQUESTED
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ platformdirs
│     │     │  │  │  ├─ android.py
│     │     │  │  │  ├─ api.py
│     │     │  │  │  ├─ macos.py
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ unix.py
│     │     │  │  │  ├─ version.py
│     │     │  │  │  ├─ windows.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  ├─ __main__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ android.cpython-314.pyc
│     │     │  │  │     ├─ api.cpython-314.pyc
│     │     │  │  │     ├─ macos.cpython-314.pyc
│     │     │  │  │     ├─ unix.cpython-314.pyc
│     │     │  │  │     ├─ version.cpython-314.pyc
│     │     │  │  │     ├─ windows.cpython-314.pyc
│     │     │  │  │     ├─ __init__.cpython-314.pyc
│     │     │  │  │     └─ __main__.cpython-314.pyc
│     │     │  │  ├─ platformdirs-4.2.2.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ licenses
│     │     │  │  │  │  └─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ REQUESTED
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ tomli
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ _parser.py
│     │     │  │  │  ├─ _re.py
│     │     │  │  │  ├─ _types.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ _parser.cpython-314.pyc
│     │     │  │  │     ├─ _re.cpython-314.pyc
│     │     │  │  │     ├─ _types.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ tomli-2.0.1.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ REQUESTED
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ typeguard
│     │     │  │  │  ├─ py.typed
│     │     │  │  │  ├─ _checkers.py
│     │     │  │  │  ├─ _config.py
│     │     │  │  │  ├─ _decorators.py
│     │     │  │  │  ├─ _exceptions.py
│     │     │  │  │  ├─ _functions.py
│     │     │  │  │  ├─ _importhook.py
│     │     │  │  │  ├─ _memo.py
│     │     │  │  │  ├─ _pytest_plugin.py
│     │     │  │  │  ├─ _suppression.py
│     │     │  │  │  ├─ _transformer.py
│     │     │  │  │  ├─ _union_transformer.py
│     │     │  │  │  ├─ _utils.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ _checkers.cpython-314.pyc
│     │     │  │  │     ├─ _config.cpython-314.pyc
│     │     │  │  │     ├─ _decorators.cpython-314.pyc
│     │     │  │  │     ├─ _exceptions.cpython-314.pyc
│     │     │  │  │     ├─ _functions.cpython-314.pyc
│     │     │  │  │     ├─ _importhook.cpython-314.pyc
│     │     │  │  │     ├─ _memo.cpython-314.pyc
│     │     │  │  │     ├─ _pytest_plugin.cpython-314.pyc
│     │     │  │  │     ├─ _suppression.cpython-314.pyc
│     │     │  │  │     ├─ _transformer.cpython-314.pyc
│     │     │  │  │     ├─ _union_transformer.cpython-314.pyc
│     │     │  │  │     ├─ _utils.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ typeguard-4.3.0.dist-info
│     │     │  │  │  ├─ entry_points.txt
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ top_level.txt
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ typing_extensions-4.12.2.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ typing_extensions.py
│     │     │  │  ├─ wheel
│     │     │  │  │  ├─ bdist_wheel.py
│     │     │  │  │  ├─ cli
│     │     │  │  │  │  ├─ convert.py
│     │     │  │  │  │  ├─ pack.py
│     │     │  │  │  │  ├─ tags.py
│     │     │  │  │  │  ├─ unpack.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ convert.cpython-314.pyc
│     │     │  │  │  │     ├─ pack.cpython-314.pyc
│     │     │  │  │  │     ├─ tags.cpython-314.pyc
│     │     │  │  │  │     ├─ unpack.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ macosx_libfile.py
│     │     │  │  │  ├─ metadata.py
│     │     │  │  │  ├─ util.py
│     │     │  │  │  ├─ vendored
│     │     │  │  │  │  ├─ packaging
│     │     │  │  │  │  │  ├─ LICENSE
│     │     │  │  │  │  │  ├─ LICENSE.APACHE
│     │     │  │  │  │  │  ├─ LICENSE.BSD
│     │     │  │  │  │  │  ├─ markers.py
│     │     │  │  │  │  │  ├─ requirements.py
│     │     │  │  │  │  │  ├─ specifiers.py
│     │     │  │  │  │  │  ├─ tags.py
│     │     │  │  │  │  │  ├─ utils.py
│     │     │  │  │  │  │  ├─ version.py
│     │     │  │  │  │  │  ├─ _elffile.py
│     │     │  │  │  │  │  ├─ _manylinux.py
│     │     │  │  │  │  │  ├─ _musllinux.py
│     │     │  │  │  │  │  ├─ _parser.py
│     │     │  │  │  │  │  ├─ _structures.py
│     │     │  │  │  │  │  ├─ _tokenizer.py
│     │     │  │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  │  └─ __pycache__
│     │     │  │  │  │  │     ├─ markers.cpython-314.pyc
│     │     │  │  │  │  │     ├─ requirements.cpython-314.pyc
│     │     │  │  │  │  │     ├─ specifiers.cpython-314.pyc
│     │     │  │  │  │  │     ├─ tags.cpython-314.pyc
│     │     │  │  │  │  │     ├─ utils.cpython-314.pyc
│     │     │  │  │  │  │     ├─ version.cpython-314.pyc
│     │     │  │  │  │  │     ├─ _elffile.cpython-314.pyc
│     │     │  │  │  │  │     ├─ _manylinux.cpython-314.pyc
│     │     │  │  │  │  │     ├─ _musllinux.cpython-314.pyc
│     │     │  │  │  │  │     ├─ _parser.cpython-314.pyc
│     │     │  │  │  │  │     ├─ _structures.cpython-314.pyc
│     │     │  │  │  │  │     ├─ _tokenizer.cpython-314.pyc
│     │     │  │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  │  ├─ vendor.txt
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ wheelfile.py
│     │     │  │  │  ├─ _bdist_wheel.py
│     │     │  │  │  ├─ _setuptools_logging.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  ├─ __main__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ bdist_wheel.cpython-314.pyc
│     │     │  │  │     ├─ macosx_libfile.cpython-314.pyc
│     │     │  │  │     ├─ metadata.cpython-314.pyc
│     │     │  │  │     ├─ util.cpython-314.pyc
│     │     │  │  │     ├─ wheelfile.cpython-314.pyc
│     │     │  │  │     ├─ _bdist_wheel.cpython-314.pyc
│     │     │  │  │     ├─ _setuptools_logging.cpython-314.pyc
│     │     │  │  │     ├─ __init__.cpython-314.pyc
│     │     │  │  │     └─ __main__.cpython-314.pyc
│     │     │  │  ├─ wheel-0.45.1.dist-info
│     │     │  │  │  ├─ entry_points.txt
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE.txt
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ REQUESTED
│     │     │  │  │  └─ WHEEL
│     │     │  │  ├─ zipp
│     │     │  │  │  ├─ compat
│     │     │  │  │  │  ├─ py310.py
│     │     │  │  │  │  ├─ __init__.py
│     │     │  │  │  │  └─ __pycache__
│     │     │  │  │  │     ├─ py310.cpython-314.pyc
│     │     │  │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  │  ├─ glob.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ glob.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ zipp-3.19.2.dist-info
│     │     │  │  │  ├─ INSTALLER
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ METADATA
│     │     │  │  │  ├─ RECORD
│     │     │  │  │  ├─ REQUESTED
│     │     │  │  │  ├─ top_level.txt
│     │     │  │  │  └─ WHEEL
│     │     │  │  └─ __pycache__
│     │     │  │     └─ typing_extensions.cpython-314.pyc
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ archive_util.cpython-314.pyc
│     │     │     ├─ build_meta.cpython-314.pyc
│     │     │     ├─ depends.cpython-314.pyc
│     │     │     ├─ discovery.cpython-314.pyc
│     │     │     ├─ dist.cpython-314.pyc
│     │     │     ├─ errors.cpython-314.pyc
│     │     │     ├─ extension.cpython-314.pyc
│     │     │     ├─ glob.cpython-314.pyc
│     │     │     ├─ installer.cpython-314.pyc
│     │     │     ├─ launch.cpython-314.pyc
│     │     │     ├─ logging.cpython-314.pyc
│     │     │     ├─ modified.cpython-314.pyc
│     │     │     ├─ monkey.cpython-314.pyc
│     │     │     ├─ msvc.cpython-314.pyc
│     │     │     ├─ namespaces.cpython-314.pyc
│     │     │     ├─ unicode_utils.cpython-314.pyc
│     │     │     ├─ version.cpython-314.pyc
│     │     │     ├─ warnings.cpython-314.pyc
│     │     │     ├─ wheel.cpython-314.pyc
│     │     │     ├─ windows_support.cpython-314.pyc
│     │     │     ├─ _core_metadata.cpython-314.pyc
│     │     │     ├─ _discovery.cpython-314.pyc
│     │     │     ├─ _entry_points.cpython-314.pyc
│     │     │     ├─ _imp.cpython-314.pyc
│     │     │     ├─ _importlib.cpython-314.pyc
│     │     │     ├─ _itertools.cpython-314.pyc
│     │     │     ├─ _normalization.cpython-314.pyc
│     │     │     ├─ _path.cpython-314.pyc
│     │     │     ├─ _reqs.cpython-314.pyc
│     │     │     ├─ _scripts.cpython-314.pyc
│     │     │     ├─ _shutil.cpython-314.pyc
│     │     │     ├─ _static.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ setuptools-80.9.0.dist-info
│     │     │  ├─ entry_points.txt
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ REQUESTED
│     │     │  ├─ top_level.txt
│     │     │  └─ WHEEL
│     │     ├─ six-1.17.0.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ LICENSE
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ top_level.txt
│     │     │  └─ WHEEL
│     │     ├─ six.py
│     │     ├─ urllib3
│     │     │  ├─ connection.py
│     │     │  ├─ connectionpool.py
│     │     │  ├─ contrib
│     │     │  │  ├─ emscripten
│     │     │  │  │  ├─ connection.py
│     │     │  │  │  ├─ emscripten_fetch_worker.js
│     │     │  │  │  ├─ fetch.py
│     │     │  │  │  ├─ request.py
│     │     │  │  │  ├─ response.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ connection.cpython-314.pyc
│     │     │  │  │     ├─ fetch.cpython-314.pyc
│     │     │  │  │     ├─ request.cpython-314.pyc
│     │     │  │  │     ├─ response.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ pyopenssl.py
│     │     │  │  ├─ socks.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ pyopenssl.cpython-314.pyc
│     │     │  │     ├─ socks.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ exceptions.py
│     │     │  ├─ fields.py
│     │     │  ├─ filepost.py
│     │     │  ├─ http2
│     │     │  │  ├─ connection.py
│     │     │  │  ├─ probe.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ connection.cpython-314.pyc
│     │     │  │     ├─ probe.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ poolmanager.py
│     │     │  ├─ py.typed
│     │     │  ├─ response.py
│     │     │  ├─ util
│     │     │  │  ├─ connection.py
│     │     │  │  ├─ proxy.py
│     │     │  │  ├─ request.py
│     │     │  │  ├─ response.py
│     │     │  │  ├─ retry.py
│     │     │  │  ├─ ssltransport.py
│     │     │  │  ├─ ssl_.py
│     │     │  │  ├─ ssl_match_hostname.py
│     │     │  │  ├─ timeout.py
│     │     │  │  ├─ url.py
│     │     │  │  ├─ util.py
│     │     │  │  ├─ wait.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ connection.cpython-314.pyc
│     │     │  │     ├─ proxy.cpython-314.pyc
│     │     │  │     ├─ request.cpython-314.pyc
│     │     │  │     ├─ response.cpython-314.pyc
│     │     │  │     ├─ retry.cpython-314.pyc
│     │     │  │     ├─ ssltransport.cpython-314.pyc
│     │     │  │     ├─ ssl_.cpython-314.pyc
│     │     │  │     ├─ ssl_match_hostname.cpython-314.pyc
│     │     │  │     ├─ timeout.cpython-314.pyc
│     │     │  │     ├─ url.cpython-314.pyc
│     │     │  │     ├─ util.cpython-314.pyc
│     │     │  │     ├─ wait.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ _base_connection.py
│     │     │  ├─ _collections.py
│     │     │  ├─ _request_methods.py
│     │     │  ├─ _version.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ connection.cpython-314.pyc
│     │     │     ├─ connectionpool.cpython-314.pyc
│     │     │     ├─ exceptions.cpython-314.pyc
│     │     │     ├─ fields.cpython-314.pyc
│     │     │     ├─ filepost.cpython-314.pyc
│     │     │     ├─ poolmanager.cpython-314.pyc
│     │     │     ├─ response.cpython-314.pyc
│     │     │     ├─ _base_connection.cpython-314.pyc
│     │     │     ├─ _collections.cpython-314.pyc
│     │     │     ├─ _request_methods.cpython-314.pyc
│     │     │     ├─ _version.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ urllib3-2.6.1.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE.txt
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  └─ WHEEL
│     │     ├─ werkzeug
│     │     │  ├─ datastructures
│     │     │  │  ├─ accept.py
│     │     │  │  ├─ auth.py
│     │     │  │  ├─ cache_control.py
│     │     │  │  ├─ csp.py
│     │     │  │  ├─ etag.py
│     │     │  │  ├─ file_storage.py
│     │     │  │  ├─ headers.py
│     │     │  │  ├─ mixins.py
│     │     │  │  ├─ range.py
│     │     │  │  ├─ structures.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ accept.cpython-314.pyc
│     │     │  │     ├─ auth.cpython-314.pyc
│     │     │  │     ├─ cache_control.cpython-314.pyc
│     │     │  │     ├─ csp.cpython-314.pyc
│     │     │  │     ├─ etag.cpython-314.pyc
│     │     │  │     ├─ file_storage.cpython-314.pyc
│     │     │  │     ├─ headers.cpython-314.pyc
│     │     │  │     ├─ mixins.cpython-314.pyc
│     │     │  │     ├─ range.cpython-314.pyc
│     │     │  │     ├─ structures.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ debug
│     │     │  │  ├─ console.py
│     │     │  │  ├─ repr.py
│     │     │  │  ├─ shared
│     │     │  │  │  ├─ console.png
│     │     │  │  │  ├─ debugger.js
│     │     │  │  │  ├─ ICON_LICENSE.md
│     │     │  │  │  ├─ less.png
│     │     │  │  │  ├─ more.png
│     │     │  │  │  └─ style.css
│     │     │  │  ├─ tbtools.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ console.cpython-314.pyc
│     │     │  │     ├─ repr.cpython-314.pyc
│     │     │  │     ├─ tbtools.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ exceptions.py
│     │     │  ├─ formparser.py
│     │     │  ├─ http.py
│     │     │  ├─ local.py
│     │     │  ├─ middleware
│     │     │  │  ├─ dispatcher.py
│     │     │  │  ├─ http_proxy.py
│     │     │  │  ├─ lint.py
│     │     │  │  ├─ profiler.py
│     │     │  │  ├─ proxy_fix.py
│     │     │  │  ├─ shared_data.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ dispatcher.cpython-314.pyc
│     │     │  │     ├─ http_proxy.cpython-314.pyc
│     │     │  │     ├─ lint.cpython-314.pyc
│     │     │  │     ├─ profiler.cpython-314.pyc
│     │     │  │     ├─ proxy_fix.cpython-314.pyc
│     │     │  │     ├─ shared_data.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ py.typed
│     │     │  ├─ routing
│     │     │  │  ├─ converters.py
│     │     │  │  ├─ exceptions.py
│     │     │  │  ├─ map.py
│     │     │  │  ├─ matcher.py
│     │     │  │  ├─ rules.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ converters.cpython-314.pyc
│     │     │  │     ├─ exceptions.cpython-314.pyc
│     │     │  │     ├─ map.cpython-314.pyc
│     │     │  │     ├─ matcher.cpython-314.pyc
│     │     │  │     ├─ rules.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ sansio
│     │     │  │  ├─ http.py
│     │     │  │  ├─ multipart.py
│     │     │  │  ├─ request.py
│     │     │  │  ├─ response.py
│     │     │  │  ├─ utils.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ http.cpython-314.pyc
│     │     │  │     ├─ multipart.cpython-314.pyc
│     │     │  │     ├─ request.cpython-314.pyc
│     │     │  │     ├─ response.cpython-314.pyc
│     │     │  │     ├─ utils.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ security.py
│     │     │  ├─ serving.py
│     │     │  ├─ test.py
│     │     │  ├─ testapp.py
│     │     │  ├─ urls.py
│     │     │  ├─ user_agent.py
│     │     │  ├─ utils.py
│     │     │  ├─ wrappers
│     │     │  │  ├─ request.py
│     │     │  │  ├─ response.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ request.cpython-314.pyc
│     │     │  │     ├─ response.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ wsgi.py
│     │     │  ├─ _internal.py
│     │     │  ├─ _reloader.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ exceptions.cpython-314.pyc
│     │     │     ├─ formparser.cpython-314.pyc
│     │     │     ├─ http.cpython-314.pyc
│     │     │     ├─ local.cpython-314.pyc
│     │     │     ├─ security.cpython-314.pyc
│     │     │     ├─ serving.cpython-314.pyc
│     │     │     ├─ test.cpython-314.pyc
│     │     │     ├─ testapp.cpython-314.pyc
│     │     │     ├─ urls.cpython-314.pyc
│     │     │     ├─ user_agent.cpython-314.pyc
│     │     │     ├─ utils.cpython-314.pyc
│     │     │     ├─ wsgi.cpython-314.pyc
│     │     │     ├─ _internal.cpython-314.pyc
│     │     │     ├─ _reloader.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     ├─ werkzeug-3.1.4.dist-info
│     │     │  ├─ INSTALLER
│     │     │  ├─ licenses
│     │     │  │  └─ LICENSE.txt
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  └─ WHEEL
│     │     ├─ wheel
│     │     │  ├─ bdist_wheel.py
│     │     │  ├─ cli
│     │     │  │  ├─ convert.py
│     │     │  │  ├─ pack.py
│     │     │  │  ├─ tags.py
│     │     │  │  ├─ unpack.py
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     ├─ convert.cpython-314.pyc
│     │     │  │     ├─ pack.cpython-314.pyc
│     │     │  │     ├─ tags.cpython-314.pyc
│     │     │  │     ├─ unpack.cpython-314.pyc
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ macosx_libfile.py
│     │     │  ├─ metadata.py
│     │     │  ├─ util.py
│     │     │  ├─ vendored
│     │     │  │  ├─ packaging
│     │     │  │  │  ├─ LICENSE
│     │     │  │  │  ├─ LICENSE.APACHE
│     │     │  │  │  ├─ LICENSE.BSD
│     │     │  │  │  ├─ markers.py
│     │     │  │  │  ├─ requirements.py
│     │     │  │  │  ├─ specifiers.py
│     │     │  │  │  ├─ tags.py
│     │     │  │  │  ├─ utils.py
│     │     │  │  │  ├─ version.py
│     │     │  │  │  ├─ _elffile.py
│     │     │  │  │  ├─ _manylinux.py
│     │     │  │  │  ├─ _musllinux.py
│     │     │  │  │  ├─ _parser.py
│     │     │  │  │  ├─ _structures.py
│     │     │  │  │  ├─ _tokenizer.py
│     │     │  │  │  ├─ __init__.py
│     │     │  │  │  └─ __pycache__
│     │     │  │  │     ├─ markers.cpython-314.pyc
│     │     │  │  │     ├─ requirements.cpython-314.pyc
│     │     │  │  │     ├─ specifiers.cpython-314.pyc
│     │     │  │  │     ├─ tags.cpython-314.pyc
│     │     │  │  │     ├─ utils.cpython-314.pyc
│     │     │  │  │     ├─ version.cpython-314.pyc
│     │     │  │  │     ├─ _elffile.cpython-314.pyc
│     │     │  │  │     ├─ _manylinux.cpython-314.pyc
│     │     │  │  │     ├─ _musllinux.cpython-314.pyc
│     │     │  │  │     ├─ _parser.cpython-314.pyc
│     │     │  │  │     ├─ _structures.cpython-314.pyc
│     │     │  │  │     ├─ _tokenizer.cpython-314.pyc
│     │     │  │  │     └─ __init__.cpython-314.pyc
│     │     │  │  ├─ vendor.txt
│     │     │  │  ├─ __init__.py
│     │     │  │  └─ __pycache__
│     │     │  │     └─ __init__.cpython-314.pyc
│     │     │  ├─ wheelfile.py
│     │     │  ├─ _bdist_wheel.py
│     │     │  ├─ _setuptools_logging.py
│     │     │  ├─ __init__.py
│     │     │  ├─ __main__.py
│     │     │  └─ __pycache__
│     │     │     ├─ bdist_wheel.cpython-314.pyc
│     │     │     ├─ macosx_libfile.cpython-314.pyc
│     │     │     ├─ metadata.cpython-314.pyc
│     │     │     ├─ util.cpython-314.pyc
│     │     │     ├─ wheelfile.cpython-314.pyc
│     │     │     ├─ _bdist_wheel.cpython-314.pyc
│     │     │     ├─ _setuptools_logging.cpython-314.pyc
│     │     │     ├─ __init__.cpython-314.pyc
│     │     │     └─ __main__.cpython-314.pyc
│     │     ├─ wheel-0.45.1.dist-info
│     │     │  ├─ entry_points.txt
│     │     │  ├─ INSTALLER
│     │     │  ├─ LICENSE.txt
│     │     │  ├─ METADATA
│     │     │  ├─ RECORD
│     │     │  ├─ REQUESTED
│     │     │  └─ WHEEL
│     │     ├─ _distutils_hack
│     │     │  ├─ override.py
│     │     │  ├─ __init__.py
│     │     │  └─ __pycache__
│     │     │     ├─ override.cpython-314.pyc
│     │     │     └─ __init__.cpython-314.pyc
│     │     └─ __pycache__
│     │        └─ six.cpython-314.pyc
│     ├─ pyvenv.cfg
│     └─ Scripts
│        ├─ activate
│        ├─ activate.bat
│        ├─ activate.fish
│        ├─ Activate.ps1
│        ├─ deactivate.bat
│        ├─ dotenv.exe
│        ├─ flask.exe
│        ├─ gunicorn.exe
│        ├─ normalizer.exe
│        ├─ pip.exe
│        ├─ pip3.14.exe
│        ├─ pip3.exe
│        ├─ python.exe
│        ├─ pythonw.exe
│        └─ wheel.exe
├─ db
│  ├─ migrations
│  │  └─ 001_init.sql
│  └─ README_db.md
├─ frontend
│  ├─ .dart_tool
│  │  ├─ chrome-device
│  │  │  └─ Default
│  │  │     ├─ Account Web Data
│  │  │     ├─ Account Web Data-journal
│  │  │     ├─ Affiliation Database
│  │  │     ├─ Affiliation Database-journal
│  │  │     ├─ AutofillStrikeDatabase
│  │  │     │  ├─ LOCK
│  │  │     │  └─ LOG
│  │  │     ├─ blob_storage
│  │  │     │  └─ 929cc1e2-e8be-4d74-b86e-fed39926462f
│  │  │     ├─ BookmarkMergedSurfaceOrdering
│  │  │     ├─ BrowsingTopicsSiteData
│  │  │     ├─ BrowsingTopicsSiteData-journal
│  │  │     ├─ BrowsingTopicsState
│  │  │     ├─ BudgetDatabase
│  │  │     │  ├─ LOCK
│  │  │     │  └─ LOG
│  │  │     ├─ chrome_cart_db
│  │  │     │  ├─ LOCK
│  │  │     │  └─ LOG
│  │  │     ├─ ClientCertificates
│  │  │     │  ├─ LOCK
│  │  │     │  └─ LOG
│  │  │     ├─ commerce_subscription_db
│  │  │     │  ├─ LOCK
│  │  │     │  └─ LOG
│  │  │     ├─ DIPS
│  │  │     ├─ discounts_db
│  │  │     │  ├─ LOCK
│  │  │     │  └─ LOG
│  │  │     ├─ discount_infos_db
│  │  │     │  ├─ LOCK
│  │  │     │  └─ LOG
│  │  │     ├─ Download Service
│  │  │     │  ├─ EntryDB
│  │  │     │  │  ├─ LOCK
│  │  │     │  │  └─ LOG
│  │  │     │  └─ Files
│  │  │     ├─ Extension Rules
│  │  │     │  ├─ 000003.log
│  │  │     │  ├─ CURRENT
│  │  │     │  ├─ LOCK
│  │  │     │  ├─ LOG
│  │  │     │  └─ MANIFEST-000001
│  │  │     ├─ Extension Scripts
│  │  │     │  ├─ 000003.log
│  │  │     │  ├─ CURRENT
│  │  │     │  ├─ LOCK
│  │  │     │  ├─ LOG
│  │  │     │  └─ MANIFEST-000001
│  │  │     ├─ Extension State
│  │  │     │  ├─ 000003.log
│  │  │     │  ├─ CURRENT
│  │  │     │  ├─ LOCK
│  │  │     │  ├─ LOG
│  │  │     │  └─ MANIFEST-000001
│  │  │     ├─ Favicons
│  │  │     ├─ Favicons-journal
│  │  │     ├─ Feature Engagement Tracker
│  │  │     │  ├─ AvailabilityDB
│  │  │     │  │  ├─ LOCK
│  │  │     │  │  └─ LOG
│  │  │     │  └─ EventDB
│  │  │     │     ├─ LOCK
│  │  │     │     └─ LOG
│  │  │     ├─ GCM Store
│  │  │     │  ├─ 000003.log
│  │  │     │  ├─ CURRENT
│  │  │     │  ├─ Encryption
│  │  │     │  │  ├─ 000003.log
│  │  │     │  │  ├─ CURRENT
│  │  │     │  │  ├─ LOCK
│  │  │     │  │  ├─ LOG
│  │  │     │  │  └─ MANIFEST-000001
│  │  │     │  ├─ LOCK
│  │  │     │  ├─ LOG
│  │  │     │  └─ MANIFEST-000001
│  │  │     ├─ heavy_ad_intervention_opt_out.db
│  │  │     ├─ heavy_ad_intervention_opt_out.db-journal
│  │  │     ├─ History
│  │  │     ├─ History-journal
│  │  │     ├─ Local Storage
│  │  │     │  └─ leveldb
│  │  │     │     ├─ 000003.log
│  │  │     │     ├─ CURRENT
│  │  │     │     ├─ LOCK
│  │  │     │     ├─ LOG
│  │  │     │     └─ MANIFEST-000001
│  │  │     ├─ LOCK
│  │  │     ├─ LOG
│  │  │     ├─ Login Data
│  │  │     ├─ Login Data For Account
│  │  │     ├─ Login Data For Account-journal
│  │  │     ├─ Login Data-journal
│  │  │     ├─ Network
│  │  │     │  ├─ Cookies
│  │  │     │  ├─ Cookies-journal
│  │  │     │  ├─ Network Persistent State
│  │  │     │  ├─ NetworkDataMigrated
│  │  │     │  ├─ Reporting and NEL
│  │  │     │  ├─ Reporting and NEL-journal
│  │  │     │  ├─ TransportSecurity
│  │  │     │  ├─ Trust Tokens
│  │  │     │  └─ Trust Tokens-journal
│  │  │     ├─ Network Action Predictor
│  │  │     ├─ Network Action Predictor-journal
│  │  │     ├─ optimization_guide_hint_cache_store
│  │  │     │  ├─ LOCK
│  │  │     │  └─ LOG
│  │  │     ├─ parcel_tracking_db
│  │  │     │  ├─ LOCK
│  │  │     │  └─ LOG
│  │  │     ├─ PersistentOriginTrials
│  │  │     │  ├─ LOCK
│  │  │     │  └─ LOG
│  │  │     ├─ Preferences
│  │  │     ├─ PreferredApps
│  │  │     ├─ README
│  │  │     ├─ Safe Browsing Network
│  │  │     │  ├─ NetworkDataMigrated
│  │  │     │  ├─ Safe Browsing Cookies
│  │  │     │  └─ Safe Browsing Cookies-journal
│  │  │     ├─ Secure Preferences
│  │  │     ├─ Segmentation Platform
│  │  │     │  ├─ SegmentInfoDB
│  │  │     │  │  ├─ LOCK
│  │  │     │  │  └─ LOG
│  │  │     │  ├─ SignalDB
│  │  │     │  │  ├─ LOCK
│  │  │     │  │  └─ LOG
│  │  │     │  └─ SignalStorageConfigDB
│  │  │     │     ├─ LOCK
│  │  │     │     └─ LOG
│  │  │     ├─ ServerCertificate
│  │  │     ├─ ServerCertificate-journal
│  │  │     ├─ Service Worker
│  │  │     │  ├─ Database
│  │  │     │  │  ├─ 000003.log
│  │  │     │  │  ├─ CURRENT
│  │  │     │  │  ├─ LOCK
│  │  │     │  │  ├─ LOG
│  │  │     │  │  └─ MANIFEST-000001
│  │  │     │  └─ ScriptCache
│  │  │     │     ├─ 2cc80dabc69f58b6_0
│  │  │     │     ├─ 4cb013792b196a35_0
│  │  │     │     ├─ 4cb013792b196a35_1
│  │  │     │     ├─ index
│  │  │     │     └─ index-dir
│  │  │     │        └─ the-real-index
│  │  │     ├─ Session Storage
│  │  │     │  ├─ 000003.log
│  │  │     │  ├─ CURRENT
│  │  │     │  ├─ LOCK
│  │  │     │  ├─ LOG
│  │  │     │  └─ MANIFEST-000001
│  │  │     ├─ Sessions
│  │  │     │  ├─ Session_13413459708961267
│  │  │     │  └─ Tabs_13413459741653277
│  │  │     ├─ Shared Dictionary
│  │  │     │  ├─ cache
│  │  │     │  │  ├─ index
│  │  │     │  │  └─ index-dir
│  │  │     │  │     └─ the-real-index
│  │  │     │  ├─ db
│  │  │     │  └─ db-journal
│  │  │     ├─ SharedStorage
│  │  │     ├─ shared_proto_db
│  │  │     │  ├─ 000003.log
│  │  │     │  ├─ CURRENT
│  │  │     │  ├─ LOCK
│  │  │     │  ├─ LOG
│  │  │     │  ├─ MANIFEST-000001
│  │  │     │  └─ metadata
│  │  │     │     ├─ 000003.log
│  │  │     │     ├─ CURRENT
│  │  │     │     ├─ LOCK
│  │  │     │     ├─ LOG
│  │  │     │     └─ MANIFEST-000001
│  │  │     ├─ Shortcuts
│  │  │     ├─ Shortcuts-journal
│  │  │     ├─ Site Characteristics Database
│  │  │     │  ├─ 000003.log
│  │  │     │  ├─ CURRENT
│  │  │     │  ├─ LOCK
│  │  │     │  ├─ LOG
│  │  │     │  └─ MANIFEST-000001
│  │  │     ├─ Sync Data
│  │  │     │  └─ LevelDB
│  │  │     │     ├─ 000003.log
│  │  │     │     ├─ CURRENT
│  │  │     │     ├─ LOCK
│  │  │     │     ├─ LOG
│  │  │     │     └─ MANIFEST-000001
│  │  │     ├─ Top Sites
│  │  │     ├─ Top Sites-journal
│  │  │     ├─ trusted_vault.pb
│  │  │     ├─ Web Data
│  │  │     ├─ Web Data-journal
│  │  │     └─ WebStorage
│  │  │        ├─ QuotaManager
│  │  │        └─ QuotaManager-journal
│  │  ├─ dartpad
│  │  │  └─ web_plugin_registrant.dart
│  │  ├─ extension_discovery
│  │  │  └─ vs_code.json
│  │  ├─ package_config.json
│  │  ├─ package_graph.json
│  │  └─ version
│  ├─ .flutter-plugins-dependencies
│  ├─ .idea
│  │  ├─ libraries
│  │  │  ├─ Dart_SDK.xml
│  │  │  └─ KotlinJavaRuntime.xml
│  │  ├─ modules.xml
│  │  ├─ runConfigurations
│  │  │  └─ main_dart.xml
│  │  └─ workspace.xml
│  ├─ .metadata
│  ├─ analysis_options.yaml
│  ├─ build
│  │  ├─ .last_build_id
│  │  ├─ bc923b3a2702ca4a1de9f685e374e738
│  │  │  ├─ .filecache
│  │  │  ├─ dart_build.d
│  │  │  ├─ dart_build.stamp
│  │  │  ├─ dart_build_result.json
│  │  │  ├─ gen_dart_plugin_registrant.stamp
│  │  │  ├─ gen_localizations.stamp
│  │  │  ├─ outputs.json
│  │  │  └─ _composite.stamp
│  │  ├─ ca33f282d90356a564f3e3da52c97351.cache.dill.track.dill
│  │  ├─ flutter_assets
│  │  │  ├─ AssetManifest.bin
│  │  │  ├─ AssetManifest.bin.json
│  │  │  ├─ FontManifest.json
│  │  │  ├─ fonts
│  │  │  │  └─ MaterialIcons-Regular.otf
│  │  │  ├─ NOTICES
│  │  │  ├─ packages
│  │  │  │  └─ cupertino_icons
│  │  │  │     └─ assets
│  │  │  │        └─ CupertinoIcons.ttf
│  │  │  └─ shaders
│  │  │     ├─ ink_sparkle.frag
│  │  │     └─ stretch_effect.frag
│  │  └─ native_assets
│  │     └─ web
│  ├─ hakwallet.iml
│  ├─ lib
│  │  ├─ app.dart
│  │  ├─ core
│  │  │  ├─ constants.dart
│  │  │  ├─ routes.dart
│  │  │  └─ theme.dart
│  │  ├─ main.dart
│  │  ├─ models
│  │  │  └─ transaction_model.dart
│  │  ├─ providers
│  │  │  ├─ user_provider.dart
│  │  │  └─ wallet_provider.dart
│  │  ├─ screens
│  │  │  ├─ auth
│  │  │  │  ├─ login_screen.dart
│  │  │  │  └─ register_screen.dart
│  │  │  ├─ create_wallet
│  │  │  │  └─ create_wallet_screen.dart
│  │  │  ├─ history
│  │  │  │  └─ history_screen.dart
│  │  │  ├─ home
│  │  │  │  └─ home_screen.dart
│  │  │  ├─ import_wallet
│  │  │  │  └─ import_wallet_screen.dart
│  │  │  ├─ send
│  │  │  │  └─ send_screen.dart
│  │  │  ├─ settings
│  │  │  │  └─ settings_screen.dart
│  │  │  └─ verify_mnemonic
│  │  │     └─ verify_mnemonic_screen.dart
│  │  ├─ services
│  │  │  ├─ api_service.dart
│  │  │  └─ wallet_service.dart
│  │  └─ widgets
│  ├─ pubspec.lock
│  ├─ pubspec.yaml
│  ├─ README.md
│  ├─ README_frontend.md
│  ├─ test
│  │  └─ widget_test.dart
│  └─ web
│     ├─ favicon.png
│     ├─ icons
│     │  ├─ Icon-192.png
│     │  ├─ Icon-512.png
│     │  ├─ Icon-maskable-192.png
│     │  └─ Icon-maskable-512.png
│     ├─ index.html
│     └─ manifest.json
└─ README.md

```
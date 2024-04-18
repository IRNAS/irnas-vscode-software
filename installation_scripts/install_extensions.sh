#!/usr/bin/env bash

function install {
    code --install-extension "$1"
}

# General development core
install eamodio.gitlens
install usernamehw.errorlens

# C/C++ extensions
install xaver.clang-format
install cheshirekow.cmake-format
install twxs.cmake
install llvm-vs-code-extensions.vscode-clangd
install cschlosser.doxdocgen
install IRNAS.auto-comment-blocks-single-star
install harry-ross-software.c-snippets
install jeff-hykin.better-c-syntax
install jeff-hykin.better-cpp-syntax

# JS/TS extensions
install esbenp.prettier-vscode # Also used for formatting markdown files.
install dbaeumer.vscode-eslint
install xabikos.JavaScriptSnippets
install msjsdiag.vscode-react-native

# Python extensions
install ms-python.python
install magicstack.MagicPython
install charliermarsh.ruff
install njpwerner.autodocstring
install frhtylcn.pythonsnippets

# Cmake
install twxs.cmake
install cheshirekow.cmake-format

# Docker
install ms-azuretools.vscode-docker
install exiasr.hadolint

# Jupyter
install ms-toolsai.jupyter

# Embedded development
install marus25.cortex-debug
install ms-vscode.vscode-embedded-tools
install keroc.hex-fmt
install nordic-semiconductor.nrf-kconfig
install nordic-semiconductor.nrf-kconfig
install nordic-semiconductor.nrf-terminal

# Extras
install ms-vscode-remote.vscode-remote-extensionpack
install tekumara.typos-vscode
install DavidAnson.vscode-markdownlint
install yzhang.markdown-all-in-one
install shd101wyy.markdown-preview-enhanced
install github.copilot
install github.copilot-chat
install Graphite.gti-vscode
install wayou.vscode-todo-highlight
install mattlott.copy-github-url
install redhat.vscode-yaml
install tamasfe.even-better-toml
install coolchyni.beyond-debug
install vsciot-vscode.vscode-arduino
install VisualStudioExptTeam.vscodeintellicode

# Extra tools needed by some extensions, but are provided by them.
pip install cmake-format

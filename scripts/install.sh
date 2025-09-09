#!/bin/sh

if [ "$(uname)" = "Darwin" ]; then
  # macOS specific env:
  export PYTORCH_ENABLE_MPS_FALLBACK=1
  export PYTORCH_MPS_HIGH_WATERMARK_RATIO=0.0
elif [ "$(uname)" != "Linux" ]; then
  echo "Unsupported operating system."
  exit 1
fi

requirements_file="requirements.txt"

# Check if required packages are installed and install them if not
if [ -f "${requirements_file}" ]; then
  installed_packages=$(python -m pip freeze)
  while IFS= read -r package; do
    expr "${package}" : "^#.*" > /dev/null && continue
    package_name=$(echo "${package}" | sed 's/[<>=!].*//')
    if ! echo "${installed_packages}" | grep -q "${package_name}"; then
      echo "${package_name} not found. Attempting to install..."
      python -m pip install --upgrade "${package}"
    fi
  done < "${requirements_file}"
else
  echo "${requirements_file} not found. Please ensure the requirements file with required packages exists."
  exit 1
fi

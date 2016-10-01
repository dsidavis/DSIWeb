
from invoke import task, Collection
import pelicanconf as conf

# Built-in modules
import os
import shutil

# External modules
import sass


namespace = Collection()

@task
def clean(ctx):
    """Remove the build directory."""
    if os.path.isdir(conf.OUTPUT_PATH):
        shutil.rmtree(conf.OUTPUT_PATH)

namespace.add_task(clean)


# Build
# =====
@task(clean)
def build_content(ctx):
    """Build the site."""
    ctx.run("pelican")


@task
def build_theme(ctx):
    """Build the site theme (if you changed a .scss file)."""
    src_path = os.path.join(conf.THEME, conf.BOOTSTRAP_THEME, "build.scss")
    css = sass.compile(filename = src_path, output_style = "compressed",
        precision = 8)

    dest_path = os.path.join(conf.THEME, "static", "css",
        "bootstrap.{}.min.css".format(conf.BOOTSTRAP_THEME))
    with open(dest_path, "w") as dest:
        dest.write(css)

    ctx.run(
        "node_modules/postcss-cli/bin/postcss "
        "--use autoprefixer --replace " + dest_path
    )


build = Collection("build")
build.add_task(build_content, "content", default = True)
build.add_task(build_theme, "theme")
namespace.add_collection(build)


# Other Tasks
# ===========
@task(build_content)
def serve(ctx, port = 8000):
    """Serve the site at http://localhost:8000/"""
    os.chdir(conf.OUTPUT_PATH)
    ctx.run("python -m pelican.server {}".format(port))

namespace.add_task(serve)


@task(clean)
def watch(ctx):
    """Automatically build the site when changes are saved."""
    ctx.run("pelican --autoreload")

namespace.add_task(watch)



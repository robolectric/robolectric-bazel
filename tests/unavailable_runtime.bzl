"""A smoke-test repository that must never be fetched."""

def _unavailable_runtime_impl(ctx):
    fail("An excluded Robolectric runtime was fetched: " + ctx.name)

unavailable_runtime = repository_rule(implementation = _unavailable_runtime_impl)



def before_scenario(context, scenario):
    if "skipscenario" in scenario.effective_tags:
        scenario.skip("Marked with @skip")
        return
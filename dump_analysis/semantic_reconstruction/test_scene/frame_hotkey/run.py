from pathlib import Path

baseline = Path(__file__).resolve().parent.parent / 'h1_h2' / 'run.py'
exec(compile(baseline.read_text(), str(baseline), 'exec'))

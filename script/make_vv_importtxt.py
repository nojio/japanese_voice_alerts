import os

project_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
import_file = project_dir + "/voicevox/import.txt"

characters = [
    "四国めたん(ノーマル)",
    "ずんだもん(ノーマル)",
    "青山龍星(ノーマル)",
]

words = [
    "危険",
    "警告",
    "敵を検知しました",
    "流体が不足しています",
    "電力が不足しています",
    "素材が不足しています",
    "リペアキットが不足しています",
    "機関車がスタックしています",
    "タンクが満タンです",
    "チェストが満載です",
    "鉱床が枯渇しました",
]

f = open(import_file, 'w')

for character in characters:
    for word in words:
        line = character + "," + word + "\n"
        f.write(line)

f.close()

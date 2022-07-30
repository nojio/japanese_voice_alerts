import os
import glob
import re
from pydub import AudioSegment

project_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sound_dir = project_dir + "/sound/"

silent = AudioSegment.silent(duration=3000)

wav_files = glob.glob(sound_dir + "*.wav")

for wav_file in wav_files:
    wav_file = os.path.basename(wav_file)
    if re.search('^[0-9]{3}_', wav_file):
        fixed_wav_path = re.sub('^[0-9]{3}_', '', wav_file)

        wav = AudioSegment.from_file(sound_dir + wav_file)
        wav = wav + silent
        wav.export(sound_dir + fixed_wav_path, format='wav')

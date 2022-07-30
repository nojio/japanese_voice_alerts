local speaker = data.raw["programmable-speaker"]["programmable-speaker"]

local characters = {
    jva_metan = "四国めたん_ノーマル",
    jva_zundamon = "ずんだもん_ノーマル",
    jva_ryusei = "青山龍星_ノーマル",
}

local words = {
    jva_critical = "危険",
    jva_warning = "警告",
    jva_enemy_detected = "敵を検知しました",
    jva_fluid_is_low = "流体が不足しています",
    jva_power_is_low = "電力が不足しています",
    jva_ingredient_is_low = "素材が不足しています",
    jva_repair_kit_is_low = "リペアキットが不足しています",
    jva_train_is_stuck = "機関車がスタックしています",
    jva_tank_is_full = "タンクが満タンです",
    jva_chest_is_full = "チェストが満載です",
    jva_deposit_depleted = "鉱床が枯渇しました",
}

for instrument_name, sound_file_character in pairs(characters) do
    local temp_notes = {}
    for note_name, sound_file_word in pairs(words) do
        table.insert(temp_notes, { name = note_name, sound = { filename = "__japanese_voice_alerts__/sound/"..sound_file_character.."_"..sound_file_word..".wav" } })
    end

    table.insert(speaker.instruments,
        {
            name = instrument_name,
            notes = temp_notes
        }
    )
end

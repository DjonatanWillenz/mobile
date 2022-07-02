enum UserSettingEnum { NOTIFY }

class UserSettingDto {
  UserSettingEnum setting;
  bool enabled;

  UserSettingDto({UserSettingEnum settingEnum, bool enabled}) {
    this.setting = settingEnum;
    this.enabled = enabled;
  }

  getDescription() {
    switch (setting) {
      case UserSettingEnum.NOTIFY:
        return "Notificar ao identificar erro ao tentar disparar rotina de tratar";
        break;
    }
  }
}

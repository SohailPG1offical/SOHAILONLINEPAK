-- ========================================
-- >>> WELCOME TO @SohailPG1 VIP MOD PAK FILE <<<
-- =======================================
-- CREDIT: @SohailPG1 - PAKISTAN VIP MOD
-- CONTACT: Telegram @SohailPG1
-- VERSION: 5.0 NO LICENSE - FULL FREE
-- ========================================

local BRPlayerCharacterBase = {
  ServerRPC = {},
  ClientRPC = {},
  MulticastRPC = {}
}
BRPlayerCharacterBase.ServerRPC.ServerRPC_NearDeathGiveupRescue = {
  Reliable = true,
  Params = {}
}
BRPlayerCharacterBase.ServerRPC.ServerRPC_CarryDeadBox = {
  Reliable = true,
  Params = {
    UEnums.EPropertyClass.Object
  }
}
BRPlayerCharacterBase.ServerRPC.RPC_Server_GmPlayAction = {
  Reliable = true,
  Params = {
    UEnums.EPropertyClass.Int
  }
}
BRPlayerCharacterBase.MulticastRPC.MulticastRPC_GmPlayAction = {
  Reliable = true,
  Params = {
    UEnums.EPropertyClass.Int
  }
}
BRPlayerCharacterBase.ClientRPC.RPC_Client_SetShouldCheckPassWall = {
  Reliable = true,
  Params = {
    UEnums.EPropertyClass.Bool
  }
}
local ENetRole = import("ENetRole")
local EPawnState = import("EPawnState")
local GameplayData = require("GameLua.GameCore.Data.GameplayData")
local GamePlayTools = require("GameLua.Mod.BaseMod.Common.GamePlayTools")

local KismetSystemLibrary = import("KismetSystemLibrary")
local packageName = KismetSystemLibrary.GetGameBundleId()

local function GetGamePaths(pkg)
    local paths = {
        ["com.tencent.ig"] = {
            base = "/storage/emulated/0/Android/data/com.tencent.ig/files/",
            sdcard = "/sdcard/Android/data/com.tencent.ig/files/",
            saved = "/storage/emulated/0/Android/data/com.tencent.ig/files"
        },
        ["com.pubg.imobile"] = {
            base = "/storage/emulated/0/Android/data/com.pubg.imobile/files/",
            sdcard = "/sdcard/Android/data/com.pubg.imobile/files/",
            saved = "/storage/emulated/0/Android/data/com.pubg.imobile/files/"
        },
        ["com.vng.pubgmobile"] = {
            base = "/storage/emulated/0/Android/data/com.vng.pubgmobile/files/",
            sdcard = "/sdcard/Android/data/com.vng.pubgmobile/files/",
            saved = "/storage/emulated/0/Android/data/com.vng.pubgmobile/files/"
        },
        ["com.pubg.krmobile"] = {
            base = "/storage/emulated/0/Android/data/com.pubg.krmobile/files/",
            sdcard = "/sdcard/Android/data/com.pubg.krmobile/files/",
            saved = "/storage/emulated/0/Android/data/com.pubg.krmobile/files/"
        },
        ["com.rekoo.pubgm"] = {
            base = "/storage/emulated/0/Android/data/com.rekoo.pubgm/files/",
            sdcard = "/sdcard/Android/data/com.rekoo.pubgm/files/",
            saved = "/storage/emulated/0/Android/data/com.rekoo.pubgm/files/"
        },
        ["com.garena.game.kgtw"] = {
            base = "/storage/emulated/0/Android/data/com.garena.game.kgtw/files/",
            sdcard = "/sdcard/Android/data/com.garena.game.kgtw/files/",
            saved = "/storage/emulated/0/Android/data/com.garena.game.kgtw/files/"
        },
        ["com.pubg.jpmobile"] = {
            base = "/storage/emulated/0/Android/data/com.pubg.jpmobile/files/",
            sdcard = "/sdcard/Android/data/com.pubg.jpmobile/files/",
            saved = "/storage/emulated/0/Android/data/com.pubg.jpmobile/files/"
        }
    }
    return paths[pkg] or {
        base = "/storage/emulated/0/Android/data/" .. pkg .. "/files/",
        sdcard = "/sdcard/Android/data/" .. pkg .. "/files/",
        saved = "/storage/emulated/0/Android/data/" .. pkg .. "/files/"
    }
end

local currentGamePaths = GetGamePaths(packageName)

-- ============================================================================
-- LICENSE SYSTEM REMOVED - MOD IS NOW 100% FREE
-- All features unlocked. No key required. No login required.
-- ============================================================================

-- Stub functions so existing code does not break
local function BRLicenseActive()
    return true
end

local function BRLicenseMaintenance()
    return true
end

function _G.MasterLicenseLogin(key)
    return true, "unlocked"
end

function _G.MasterLicenseLogout()
    return true
end

function _G.MasterLicenseStatus()
    return {
        authorized = true,
        phase = "active",
        message = "License system removed - FULL FREE ACCESS"
    }
end

function BRPlayerCharacterBase:SubmitESPKey(key)
    return true
end

function BRPlayerCharacterBase:LogoutESP()
    return true
end

function BRPlayerCharacterBase:GetESPStatus()
    return {
        state = "active",
        license = { authorized = true, phase = "active" }
    }
end

local function Notify(msg)
    local s = "[SohailPG1] " .. tostring(msg)
    pcall(function()
        if _G.GTLMODNotify then
            _G.GTLMODNotify(s)
        end
    end)
    pcall(function()
        local sh = import("ScriptHelperClient")
        if sh and sh.AddOnScreenDebugMessage then
            sh.AddOnScreenDebugMessage(
                s, -1, 3.0,
                {R=1, G=1, B=0, A=1},
                {X=1.2, Y=1.2}
            )
        end
    end)
    print(s)
end

local isExpired = false

BRPlayerCharacterBase.ServerRPC.RPC_Server_ReportSimulateCharacterLocation = { Reliable = true, Params = {} }
BRPlayerCharacterBase.ClientRPC.RPC_Client_ShootVertifyRes = { Reliable = true, Params = {} }
BRPlayerCharacterBase.ClientRPC.RPC_ClientCoronaLab = { Reliable = true, Params = {} }
BRPlayerCharacterBase.ServerRPC.RPC_Server_ReportPlayerKillFlow = { Reliable = true, Params = {} }
BRPlayerCharacterBase.ServerRPC.RPC_Server_ClientSecMrpcsFlow = { Reliable = true, Params = {} }
BRPlayerCharacterBase.ServerRPC.RPC_Server_Heartbeat = { Reliable = true, Params = {} }
BRPlayerCharacterBase.ServerRPC.RPC_Server_SwiftHawk = { Reliable = true, Params = {} }
BRPlayerCharacterBase.ServerRPC.RPC_Server_ClientSwiftHawkWithParams = { Reliable = true, Params = {} }
local ENetRole = import("ENetRole")
local EPawnState = import("EPawnState")
local GameplayData = require("GameLua.GameCore.Data.GameplayData")
local GamePlayTools = require("GameLua.Mod.BaseMod.Common.GamePlayTools")

function BRPlayerCharacterBase:ctor()
end

function BRPlayerCharacterBase:_PostConstruct()
  BRPlayerCharacterBase.__super._PostConstruct(self)
  self:InitAddSpecialMoveInfo()
  self.bCanNearDeathGiveup = true
  print(bWriteLog and "BRPlayerCharacterBase:_PostConstruct bCanNearDeathGiveup true")
end

function BRPlayerCharacterBase:ReceiveBeginPlay()
  BRPlayerCharacterBase.__super.ReceiveBeginPlay(self)
  self:AddControlEvent(self, "MovementModeChangedDelegate", self.HandleOnMovementModeChangedNew, self)
  if self:HasAuthority() and self:CheckAddCheckFallingDistanceComponent() then
    local CheckFallingDistanceComponent_C = import("CheckFallingDistanceComponent")
    if slua.isValid(CheckFallingDistanceComponent_C) and not slua.isValid(self:GetComponentByClass(CheckFallingDistanceComponent_C)) then
      print(bWriteLog and "BRPlayerCharacterBase:ReceiveBeginPlay Add CheckFallingDistanceComponent")
      Game:AddComponent(CheckFallingDistanceComponent_C, self, "CheckFallingDistanceComponent")
    end
  end
  if slua.isValid(self.STCharacterMovement) then
    self.STCharacterMovement.bPositiveBlowUp = true
  end
  if self.Role == ENetRole.ROLE_AutonomousProxy then
    self:AddControlEvent(self, "OnPawnStateDisabled", self.OnPawnStateChange, self)
    self:AddControlEvent(self, "OnPawnStateEnabled", self.OnPawnStateChange, self)
    self:AddControlEventConditionOnly(self, "OnAttrChangeEventDelegate", {
      AttrName = {
        "bCanSelfRescue"
      }
    }, self.CharacterAttrChangeEvent, self)
  end
  if Client then
    printf(bWriteLog and "BRPlayerCharacterBase:ReceiveBeginPlay, PlayerKey:%u ", self.PlayerKey)
    GameplayData.AddCharacter(self.Object)
    self:AddControlEvent(self, "OnAttachedToVehicle", self.HandleOnAttachedToVehicle, self)
    self:AddControlEvent(self, "OnDetachedFromVehicle", self.HandleOnDetachedFromVehicle, self)
  else
    self:AddCommonEventWithConditions(EVENTTYPE_INGAME_NORMAL, EVENTID_GAME_MODE_STATE_CHANGE, {
      [1] = "FinishedState"
    }, self.HandleFinishedState, self)
  end
end

function BRPlayerCharacterBase:HandleOnAttachedToVehicle(uVehicle)
  if not slua.isValid(uVehicle) then
    return
  end
  print(bWriteLog and string.format("BRPlayerCharacterBase:HandleOnAttachedToVehicle", Game:GetObjName(uVehicle)))
  if self.Role == ENetRole.ROLE_SimulatedProxy then
    self:ClearAttachToVehicleTimer()
    self.nUpdatePlayerAttachToVehicleCount = 0
    self.nUpdatePlayerAttachToVehicleTimer = self:AddGameTimer(5, true, 
function()
      if slua.isValid(self.Object) and slua.isValid(uVehicle) then
        self:UpdatePlayerAttachToVehicle(uVehicle)
      end
    end)
    self.nFixMeshContainerTimer = self:AddGameTimer(3, true, 
function()
      if slua.isValid(self.Object) and slua.isValid(uVehicle) then
        self:FixMeshContainerOffsetIfNeeded(uVehicle)
      end
    end)
  end
end

function BRPlayerCharacterBase:HandleOnDetachedFromVehicle(uLastVehicle)
  if not slua.isValid(uLastVehicle) then
    return
  end
  print(bWriteLog and "BRPlayerCharacterBase:HandleOnDetachedFromVehicle", uLastVehicle)
  if self.Role == ENetRole.ROLE_SimulatedProxy then
    self:ClearAttachToVehicleTimer()
    self.nUpdatePlayerAttachToVehicleCount = 0
  end
end

function BRPlayerCharacterBase:UpdatePlayerAttachToVehicle(uVehicle)
  if not slua.isValid(self.Object) or not slua.isValid(uVehicle) then
    return
  end
  if not slua.isValid(self.CapsuleComponent) or not slua.isValid(self.Mesh) or not slua.isValid(self.MeshContainer) then
    return
  end
  if not slua.isValid(self:GetCurrentVehicle()) then
    return
  end
  if Game:IsDriver(self.Object) then
    return
  end
  if not self.nUpdatePlayerAttachToVehicleCount then
    self.nUpdatePlayerAttachToVehicleCount = 0
  end
  local ESTEPoseState = import("ESTEPoseState")
  local bStand = self.PoseState == ESTEPoseState.Stand
  local uActorRelativeLocation = self.CapsuleComponent:GetRelativeTransform():GetLocation()
  local uMeshRelativeLocation = self.Mesh:GetRelativeTransform():GetLocation()
  local uMeshContainerRelativeLocationZ = self.MeshContainer:GetRelativeTransform():GetLocation().Z
  local nCapsuleRadius = self.CapsuleComponent:GetScaledCapsuleRadius()
  local nCapsuleHalfHeight = self.CapsuleComponent:GetScaledCapsuleHalfHeight()
  local uMeshContainerExpectedZ = -1 * self.StandHalfHeight
  local nExpectedCapsuleRadius = self.StandRadius
  local nExpectedCapsuleHalfHeight = self.StandHalfHeight
  local uMeshExpectedRL = FVector(0, 0, 0)
  local uActorExpectedRL = FVector(0, 0, self.StandHalfHeight)
  local nTolerance = 1.0
  local bCapsuleRLCorrect = uActorRelativeLocation:Equals(uActorExpectedRL, nTolerance)
  local bMeshRLCorrect = uMeshRelativeLocation:Equals(uMeshExpectedRL, nTolerance)
  local bMeshContainerRLCorrect = nTolerance > math.abs(uMeshContainerRelativeLocationZ - uMeshContainerExpectedZ)
  local bCapsuleRadiusCorrect = nTolerance > math.abs(nCapsuleRadius - nExpectedCapsuleRadius)
  local bCapsuleHalfHeightCorrect = nTolerance > math.abs(nCapsuleHalfHeight - nExpectedCapsuleHalfHeight)
  local bAllCorrect = bStand and bCapsuleRLCorrect and bMeshRLCorrect and bMeshContainerRLCorrect and bCapsuleRadiusCorrect and bCapsuleHalfHeightCorrect
  if not bAllCorrect then
    self.nUpdatePlayerAttachToVehicleCount = self.nUpdatePlayerAttachToVehicleCount + 1
  else
    self.nUpdatePlayerAttachToVehicleCount = 0
  end
  print(bWriteLog and string.format("BRPlayerCharacterBase:UpdatePlayerAttachToVehicle PlayerKey:%s. bAllCorrect=%s Check Result:%d %d %d %d %d %d, Count:%d", tostring(self.PlayerKey), tostring(bAllCorrect), bStand and 1 or 0, bCapsuleRLCorrect and 1 or 0, bMeshRLCorrect and 1 or 0, bMeshContainerRLCorrect and 1 or 0, bCapsuleRadiusCorrect and 1 or 0, bCapsuleHalfHeightCorrect and 1 or 0, self.nUpdatePlayerAttachToVehicleCount))
  if self.nUpdatePlayerAttachToVehicleCount >= 3 and not bAllCorrect then
    local GameplayData = require("GameLua.GameCore.Data.GameplayData")
    local uPlayerController = GameplayData.GetPlayerController()
    if uPlayerController.ReportCrashKitFeature and uPlayerController.ReportCrashKitFeature.ReportCharacterAttachedOnVehicleException then
      local sReportInfo = string.format("VehicleShapeType:%s PlayerKey:%s. Check Result:%d %d %d %d %d %d. Capsule.RelativeLoc:%s Capsule.Radius:%s Capsule.HalfHeight:%s Mesh.RelativeLoc:%s MeshContainer.RelativeLocZ:%s", tostring(uVehicle.VehicleShapeType), tostring(self.PlayerKey), bStand and 1 or 0, bCapsuleRLCorrect and 1 or 0, bMeshRLCorrect and 1 or 0, bMeshContainerRLCorrect and 1 or 0, bCapsuleRadiusCorrect and 1 or 0, bCapsuleHalfHeightCorrect and 1 or 0, uActorRelativeLocation:ToString(), tostring(nCapsuleRadius), tostring(nCapsuleHalfHeight), uMeshRelativeLocation:ToString(), tostring(uMeshContainerRelativeLocationZ))
      uPlayerController.ReportCrashKitFeature:ReportCharacterAttachedOnVehicleException(sReportInfo)
    end
    self.nUpdatePlayerAttachToVehicleCount = 0
  end
end

function BRPlayerCharacterBase:FixMeshContainerOffsetIfNeeded(uVehicle)
  if not slua.isValid(self.Object) or not slua.isValid(uVehicle) then
    return
  end
  if not slua.isValid(self.MeshContainer) then
    return
  end
  if not slua.isValid(self:GetCurrentVehicle()) then
    return
  end
  if Game:IsDriver(self.Object) then
    return
  end
  local nTolerance = 1.0
  local uMeshContainerExpectedZ = -1 * self.StandHalfHeight
  local uMeshContainerRelativeLocationZ = self.MeshContainer:GetRelativeTransform():GetLocation().Z
  if nTolerance <= math.abs(uMeshContainerRelativeLocationZ - uMeshContainerExpectedZ) then
    print(bWriteLog and string.format("BRPlayerCharacterBase:FixMeshContainerOffsetIfNeeded PlayerKey:%s. SetMeshContainerOffsetZ from:%s to:%s", tostring(uMeshContainerExpectedZ), tostring(uMeshContainerExpectedZ)))
    self:SetMeshContainerOffsetZ(uMeshContainerExpectedZ)
  end
end

function BRPlayerCharacterBase:ClearAttachToVehicleTimer()
  if self.nUpdatePlayerAttachToVehicleTimer then
    self:RemoveGameTimer(self.nUpdatePlayerAttachToVehicleTimer)
    self.nUpdatePlayerAttachToVehicleTimer = nil
  end
  if self.nFixMeshContainerTimer then
    self:RemoveGameTimer(self.nFixMeshContainerTimer)
    self.nFixMeshContainerTimer = nil
  end
end

function BRPlayerCharacterBase:CharacterAttrChangeEvent(uPawn, AttrName, AttrVal)
  BRPlayerCharacterBase.__super.CharacterAttrChangeEvent(self, uPawn, AttrName, AttrVal)
  if self.Object ~= uPawn then
    return
  end
  if self.Role == ENetRole.ROLE_AutonomousProxy and AttrName == "bCanSelfRescue" then
    local uPlayerController = self:GetPlayerControllerSafety()
    if slua.isValid(uPlayerController) then
      uPlayerController:BroadcastUIMessage("UIMsg_CanSelfRescue", 0, "", "")
    end
  end
end

function BRPlayerCharacterBase:OnPawnStateChange(PawnState)
  print("BRPlayerCharacterBase:OnPawnStateChange:", PawnState)
  local EPawnState = import("EPawnState")
  if PawnState == EPawnState.SwitchPP then
    local uPlayerController = self:GetPlayerControllerSafety()
    if slua.isValid(uPlayerController) then
      uPlayerController:BroadcastUIMessage("UIMsg_FPPModeChange", 0, "", "")
    end
  end
end

function BRPlayerCharacterBase:HandleFinishedState()
  print(bWriteLog and "BRPlayerCharacterBase:HandleFinishedState", self.STCharacterMovement)
  if slua.isValid(self.STCharacterMovement) and self.STCharacterMovement.SetDynamicSimpleQueryConfig then
    self.STCharacterMovement:SetDynamicSimpleQueryConfig(false)
  end
end

function BRPlayerCharacterBase:CheckAddCheckFallingDistanceComponent()
  if CGameMode and CGameMode.GameModeType and CGameState and CGameState.GameModeID then
    local EGameModeType = import("EGameModeType")
    local MatchModeIds = require("GameLua.Mod.BaseMod.GamePlay.Config.MatchModeIdsConfig")
    local GameModeType = CGameMode.GameModeType
    local GameModeID = tonumber(CGameState.GameModeID)
    local bModeTypeSatisfy = GameModeType == EGameModeType.ETypicalGameMode or GameModeType == EGameModeType.EFourInOneGameMode or GameModeType == EGameModeType.EHeavyWeaponGameMode
    local bModeIDSatisfy = not MatchModeIds[GameModeID]
    print(bWriteLog and "BRPlayerCharacterBase:CheckAddCheckFallingDistanceComponent:", GameModeType, GameModeID, bModeTypeSatisfy, bModeIDSatisfy)
    return bModeTypeSatisfy and bModeIDSatisfy
  end
  return false
end

function BRPlayerCharacterBase:LuaHandleParachuteStateChanged(LastParachuteState, NewParachuteState)
  BRPlayerCharacterBase.__super.LuaHandleParachuteStateChanged(self, LastParachuteState, NewParachuteState)
  local EParachuteState = import("EParachuteState")
  if not Client then
    local uCurrentPlayerControl = self:GetPlayerControllerSafety()
    if slua.isValid(uCurrentPlayerControl) and uCurrentPlayerControl.CheckParachuteOpenFeature then
      if NewParachuteState == EParachuteState.PS_Opening then
        if uCurrentPlayerControl.CheckParachuteOpenFeature.SatrtCheckShowParachuteCloseUI then
          uCurrentPlayerControl.CheckParachuteOpenFeature:SatrtCheckShowParachuteCloseUI()
        end
      elseif NewParachuteState == EParachuteState.PS_None then
        if uCurrentPlayerControl.CheckParachuteOpenFeature.RecoverParachuteOpenParam then
          uCurrentPlayerControl.CheckParachuteOpenFeature:RecoverParachuteOpenParam()
        end
        if uCurrentPlayerControl.CheckParachuteOpenFeature.ClearTimerAndState then
          uCurrentPlayerControl.CheckParachuteOpenFeature:ClearTimerAndState()
        end
      end
    end
  end
end

function BRPlayerCharacterBase:OnLanded()
  printf("BRPlayerCharacterBase:OnLanded PlayerKey:%d", self.PlayerKey)
  if self.HandleOnLanded then
    self:HandleOnLanded(-1)
  end
  if not Client then
    local uCurrentPlayerControl = self:GetPlayerControllerSafety()
    if slua.isValid(uCurrentPlayerControl) and uCurrentPlayerControl.CheckParachuteOpenFeature then
      if uCurrentPlayerControl.CheckParachuteOpenFeature.ClearTimerAndState then
        uCurrentPlayerControl.CheckParachuteOpenFeature:ClearTimerAndState()
      end
      if uCurrentPlayerControl.CheckParachuteOpenFeature.ResetCheckShowUI then
        uCurrentPlayerControl.CheckParachuteOpenFeature:ResetCheckShowUI()
      end
    end
  end
end

function BRPlayerCharacterBase:ReceiveEndPlay(EndPlayReason)
  BRPlayerCharacterBase.__super.ReceiveEndPlay(self, EndPlayReason)
  if Client then
    GameplayData.RemoveCharacter(self.Object)
  end
end

function BRPlayerCharacterBase:IsWarGameMode()
  local GameplayData = require("GameLua.GameCore.Data.GameplayData")
  local uGameState = GameplayData:GetGameState()
  local STExtraGameStateBase = import("STExtraGameStateBase")
  if slua.isValid(uGameState) and Game:IsClassOf(uGameState, STExtraGameStateBase) then
    local EGameModeType = import("EGameModeType")
    return uGameState.GameModeType == EGameModeType.EWarGameMode
  else
    return false
  end
end

function BRPlayerCharacterBase:BPOnRecycled()
  print(bWriteLog and string.format("%s BPOnRecycled()", Game:GetPlainName(self.Object)))
  if Client then
    self:ResetMeshRelativeLocationAndRotation()
  end
end

function BRPlayerCharacterBase:BPOnRespawned()
  print(bWriteLog and string.format("%s BPOnRespawned()", Game:GetPlainName(self.Object)))
  if Client then
    self:ResetMeshRelativeLocationAndRotation()
  end
end

function BRPlayerCharacterBase:ReceiveOnRecycle()
  print(bWriteLog and string.format("%s IReusable:ReceiveOnRecycle()", Game:GetPlainName(self.Object)))
  if Client then
    self:ResetMeshRelativeLocationAndRotation()
    GameplayData.RemoveCharacter(self.Object)
  end
end

function BRPlayerCharacterBase:ReceiveOnSpawn()
  print(bWriteLog and string.format("%s IReusable:ReceiveOnSpawn()", Game:GetPlainName(self.Object)))
  if Client then
    self:ResetMeshRelativeLocationAndRotation()
    GameplayData.AddCharacter(self.Object)
  end
end

function BRPlayerCharacterBase:ResetMeshRelativeLocationAndRotation()
  if Game:IsValid(self.Object) and Game:IsValid(self.Mesh) then
    local uDefaultMeshRot = FRotator(0, -90, 0)
    local uDefaultMeshRelativeLoc = FVector(0, 0, 0)
    if self.Mesh.K2_SetRelativeRotation then
      self.Mesh:K2_SetRelativeRotation(uDefaultMeshRot, false, nil, false)
    end
    self:CacheInitialMeshOffset(uDefaultMeshRelativeLoc, uDefaultMeshRot)
    local vRelativeRot = self.Mesh.RelativeRotation
    local vBaseRotationOffset = self.BaseRotationOffset
    local vBaseRotation = Game:QuatToRotator(vBaseRotationOffset)
    print(bWriteLog and string.format("%s ResetMeshRelativeLocationAndRotation() Mesh.RelativeRotation: %s %s %s   Pawn.BaseRotationOffset:%s %s %s ", Game:GetPlainName(self.Object), tostring(vRelativeRot.Pitch), tostring(vRelativeRot.Yaw), tostring(vRelativeRot.Roll), tostring(vBaseRotation.Pitch), tostring(vBaseRotation.Yaw), tostring(vBaseRotation.Roll)))
  end
end

function BRPlayerCharacterBase:HandleOnMovementModeChangedNew()
  print(bWriteLog and "BRPlayerCharacterBase:HandleOnMovementModeChanged11")
  local EMovementMode = import("EMovementMode")
  if Game:IsValid(self.STCharacterMovement) and self.STCharacterMovement.MovementMode == EMovementMode.MOVE_Swimming and self:CheckBaseIsMoveable() then
    print(bWriteLog and "BRPlayerCharacterBase:HandleOnMovementModeChanged22")
    self.CharacterMovement:SetBase(nil, "", true)
  end
  if self.Role == ENetRole.ROLE_AutonomousProxy and Game:IsValid(self.STCharacterMovement) and self.STCharacterMovement.MovementMode == EMovementMode.MOVE_Walking and UIManager.UI_Config_InGame.ParachuteOpenUI then
    print(bWriteLog and "BRPlayerCharacterBase:HandleOnMovementModeChangedNew CloseUI")
    UIManager.CloseUI(UIManager.UI_Config_InGame.ParachuteOpenUI)
  end
end

function BRPlayerCharacterBase:BPOnMissPlayerDamageRecord()
end

function BRPlayerCharacterBase:PreAttachedToVehicle()
  local UKismetSystemLibrary = import("KismetSystemLibrary")
  local IsDS = UKismetSystemLibrary.IsDedicatedServer(self)
  if not IsDS then
    return
  end
  local MainPlayerController = self:GetPlayerControllerSafety()
  if not slua.isValid(MainPlayerController) then
    return
  end
  local CharacterAvatarComp2_BP = self.CharacterAvatarComp2_BP
  if not slua.isValid(CharacterAvatarComp2_BP) then
    return
  end
  local CommerAvatarDataUtil = require("GameLua.Activity.Commercialize.GamePlay.CommerAvatarDataUtil")
  local changedVehicleId = CommerAvatarDataUtil:ChangeVehicleSkinByClothes(MainPlayerController, CharacterAvatarComp2_BP)
  local ESTExtraVehicleShapeType = import("ESTExtraVehicleShapeType")
  if changedVehicleId then
    local UAvatarUtils = import("AvatarUtils")
    if UAvatarUtils.GetVehicleShapeBySkinID(changedVehicleId) == ESTExtraVehicleShapeType.VST_Horse then
      local uCurPlayerState = self:GetPlayerStateSafety()
      if slua.isValid(uCurPlayerState) then
        print(bWriteLog and "BRPlayerCharacterBase:PreAttachedToVehicle. changedVehicleId: " .. tostring(changedVehicleId))
        uCurPlayerState:AddGeneralCount(468, 1, false)
      end
    end
  end
end
BRPlayerCharacterBase.ClientRPC.ClientRPC_TriggerHighlightMoment = {
  Reliable = true,
  Params = {
    UEnums.EPropertyClass.UInt32,
    UEnums.EPropertyClass.UInt32  }
}

function BRPlayerCharacterBase:ClientRPC_TriggerHighlightMoment(Type, Param)
  print(bWriteLog and string.format("BRPlayerCharacterBase:ClientRPC_TriggerHighlightMoment Type = %d, Param = %s", Type, Param))
  EventSystem:postEvent(EVENTTYPE_INGAME, EVENTID_INGAME_TRIGGER_HIGHLIGHT_MOMENT, Type, Param)
end

function BRPlayerCharacterBase:ParachuteJump()
  local uPlayerController = self:GetControllerSafety()
  if slua.isValid(uPlayerController) then
    if not self:GetEnsure() then
      local EStateType = import("EStateType")
      if uPlayerController:GetCurrentStateType() ~= EStateType.State_ParachuteJump and uPlayerController:GetCurrentStateType() ~= EStateType.State_ParachuteOpen then
        local ESTEPoseState = import("ESTEPoseState")
        self:SwitchPoseState(ESTEPoseState.Stand, true, true, true, false)
        uPlayerController:ReInitParachuteItem()
        uPlayerController:ServerChangeStatePC(EStateType.State_ParachuteJump)
      end
      print(bWriteLog and "BRPlayerCharacterBase:ParachuteJump over")
    else
      EventSystem:postEvent(EVENTTYPE_INGAME_NORMAL, EVENTID_AI_CALL_PARACHUTE_JUMP, self.Object)
      print(bWriteLog and "BRPlayerCharacterBase:ParachuteJump AI JUMP over, Loc=", tostring(self:K2_GetActorLocation():ToString()))
    end
  end
end

function BRPlayerCharacterBase:OnMovementBaseChangedEvent(uCharacter, uNewMovementBase, uOldMovementBase)
  if uCharacter ~= self.Object then
    return
  end
  print(bWriteLog and string.format("BRPlayerCharacterBase:OnMovementBaseChangedEvent %s, Base: %s -> %s", uCharacter, uOldMovementBase, uNewMovementBase))
  local MedievalCrane = self:GetMedievalCraneFromBase(uNewMovementBase)
  if MedievalCrane and MedievalCrane.AddCharacter then
    MedievalCrane:AddCharacter(self.Object)
  else
    MedievalCrane = self:GetMedievalCraneFromBase(uOldMovementBase)
    if MedievalCrane and MedievalCrane.RemoveCharacter then
      MedievalCrane:RemoveCharacter(self.Object)
    end
  end
end

function BRPlayerCharacterBase:GetMedievalCraneFromBase(Base)
  if not slua.isValid(Base) or not Base.GetOwner then
    return
  end
  local Lifter = Base:GetOwner()
  if not slua.isValid(Lifter) then
    return
  end
  if not Lifter.AddCharacter then
    return
  end
  return Lifter
end

function BRPlayerCharacterBase:CheckForbidFlaregun()
  local uPlayerState = self:GetPlayerStateSafety()
  if not slua.isValid(uPlayerState) then
    return false
  end
  if uPlayerState.CanUseFlaregun == false and self:IsLocallyControlled() then
    local uPlayerController = self:GetPlayerControllerSafety()
    if slua.isValid(uPlayerController) then
      uPlayerController:DisplayGameTipWithMsgID(48532)
    end
  end
  return not uPlayerState.CanUseFlaregun
end

function BRPlayerCharacterBase:ServerRPC_NearDeathGiveupRescue()
  self:HandleNearDeathGiveupRescue()
end

function BRPlayerCharacterBase:HandleNearDeathGiveupRescue()
  local uNearDeathComp = self.NearDeatchComponent
  if self:IsNearDeath() and slua.isValid(uNearDeathComp) and self.bCanNearDeathGiveup == true then
    local uPlayerState = self:GetPlayerStateSafety()
    if slua.isValid(uPlayerState) then
      uPlayerState:AddGeneralCount(1613, 1, false)
    end
    uNearDeathComp:TriggerGotoDieExplictly(self.Object)
  end
end

function BRPlayerCharacterBase:RPC_Server_GmPlayAction(actionId)
  log(bWriteLog and "BRPlayerCharacterBase:RPC_Server_GmPlayAction. actionId: " .. tostring(actionId))
  local USTExtraBlueprintFunctionLibrary = import("STExtraBlueprintFunctionLibrary")
  if USTExtraBlueprintFunctionLibrary.IsDevelopment() then
    log(bWriteLog and "BRPlayerCharacterBase:RPC_Server_GmPlayAction. IsDevelopment actionId: " .. tostring(actionId))
    self:MulticastRPC_GmPlayAction(actionId)
  end
end

function BRPlayerCharacterBase:MulticastRPC_GmPlayAction(actionId)
  if not Client then
    return
  end
  log(bWriteLog and "BRPlayerCharacterBase:MulticastRPC_GmPlayAction. actionId: " .. tostring(actionId))
  local uPlayEmoteComp = self:GetPlayEmoteComponent()
  if not slua.isValid(uPlayEmoteComp) then
    return
  end
  local LogFilter = require("common.log_filter")
  LogFilter.SetLogTreeEnable(true)
  local animCfg = CDataTable.GetTableData("EmoteBPTable", actionId)
  if not animCfg then
    return
  end
  local handlePath = animCfg.Path
  local EmoteHandleAsset = slua.loadObject(handlePath)
  local assetsArray = slua.Array(UEnums.EPropertyClass.Struct, import("/Script/CoreUObject.SoftObjectPath"))
  local handle = EmoteHandleAsset()
  uPlayEmoteComp:OnLoadEmoteAssetBegin(handle, actionId, assetsArray, "")
  log(bWriteLog and "BRPlayerCharacterBase:MulticastRPC_GmPlayAction. assetsArray:Num(): " .. tostring(assetsArray:Num()))
  local tb = FuncUtil.LuaArrayToTable(assetsArray)
  local asset_util = require("common.asset_util")
  local loadLater = function()
    uPlayEmoteComp:OnLoadEmoteAssetEnd(handle, actionId, 0)
  end
  asset_util.GetAssetsArrayAsyncParallel(tb, loadLater)
end

function BRPlayerCharacterBase:RPC_Client_SetShouldCheckPassWall(bServerSyncShouldCheckPassWall)
  print(bWriteLog and "BRPlayerCharacterBase:RPC_Client_SetShouldCheckPassWall " .. tostring(bServerSyncShouldCheckPassWall))
  if slua.isValid(self.ParachuteComponent) then
    self.ParachuteComponent.bServerSyncShouldCheckPassWall = bServerSyncShouldCheckPassWall
  end
end

function BRPlayerCharacterBase:OnPlayerEnterCarryBoxState()
  self.Super:OnPlayerEnterCarryBoxState()
  local CharName = self:GetPlayerNameSafety()
  print(bWriteLog and string.format("DeadBoxLog BRPlayerCharacterBase:OnPlayerEnterCarryBoxState Role:%s PlayerKey:%s Name:%s", tostring(self.Role), tostring(self.PlayerKey), tostring(CharName)))
  if self.CarryDeadBoxFeature then
    self.CarryDeadBoxFeature:OnPlayerEnterCarryBoxState()
  end
end

function BRPlayerCharacterBase:OnPlayerLeaveCarryBoxState(bInIsInterrupt)
  self.Super:OnPlayerLeaveCarryBoxState(bInIsInterrupt)
  local CharName = self:GetPlayerNameSafety()
  print(bWriteLog and string.format("DeadBoxLog BRPlayerCharacterBase:OnPlayerLeaveCarryBoxState Role:%s PlayerKey:%s Name:%s bInIsInterrupt:%s", tostring(self.Role), tostring(self.PlayerKey), tostring(CharName), tostring(bInIsInterrupt)))
  if self.CarryDeadBoxFeature then
    self.CarryDeadBoxFeature:OnPlayerLeaveCarryBoxState(bInIsInterrupt)
  end
end

function BRPlayerCharacterBase:ServerRPC_CarryDeadBox(uInDeadBox)
  if slua.isValid(uInDeadBox) and Game:IsClassOf(uInDeadBox, import("/Script/ShadowTrackerExtra.PlayerTombBox")) and self.CarryDeadBoxFeature then
    self.CarryDeadBoxFeature:CarryDeadBox(uInDeadBox)
  end
end

function BRPlayerCharacterBase:SetAreaID(AreaID)
  self:SetAttrValue("AreaID", AreaID, -1)
end

function BRPlayerCharacterBase:GetAreaID()
  return math.floor(self:GetAttrValue("AreaID") + 0.5)
end

function BRPlayerCharacterBase:CannotChangeIntoPetSpectator()
  print(bWriteLog and "BRPlayerCharacterBase:CannotChangeIntoPetSpectator")
  return self.bCannotChangeIntoPetSpectator
end

function BRPlayerCharacterBase:DoModChangeToBT()
  print(bWriteLog and string.format("BRPlayerCharacterBase:DoModChangeToBT, PlayerKey=%s", tostring(self.PlayerKey)))
  if self:HasState(EPawnState.SpecialSuit) then
    self:TriggerEntrySkillWithID(4301101, true)
    print(bWriteLog and string.format("BRPlayerCharacterBase:DoModChangeToBT, PlayerKey=%s, HasState(EPawnState.SpecialSuit)", tostring(self.PlayerKey)))
  end
end

function BRPlayerCharacterBase:SwitchCameraToParachuteOpening()
  print(bWriteLog and "BRPlayerCharacterBase:SwitchCameraToParachuteOpening")
  self.Super:SwitchCameraToParachuteOpening()
  if self.ParachuteFormation and self.ParachuteFormation.ShouldApplyFormationCamera and self.ParachuteFormation:ShouldApplyFormationCamera() then
    self.ParachuteFormation:OverlayFormationCameraParams()
    print(bWriteLog and "BRPlayerCharacterBase:SwitchCameraToParachuteOpening - Formation camera overlaid")
  end
end

function BRPlayerCharacterBase:SwitchCameraToParachuteFalling()
  print(bWriteLog and "BRPlayerCharacterBase:SwitchCameraToParachuteFalling")
  self.Super:SwitchCameraToParachuteFalling()
  if self.ParachuteFormation and self.ParachuteFormation.ShouldApplyFormationCamera and self.ParachuteFormation:ShouldApplyFormationCamera() then
    self.ParachuteFormation:OverlayFormationCameraParams()
    print(bWriteLog and "BRPlayerCharacterBase:SwitchCameraToParachuteFalling - Formation camera overlaid")
  end
end

function BRPlayerCharacterBase:SwitchCameraToNormal()
  print(bWriteLog and "BRPlayerCharacterBase:SwitchCameraToNormal")
  self.Super:SwitchCameraToNormal()
  if self.ParachuteFormation and self.ParachuteFormation.OnLandingClearFormationCamera then
    self.ParachuteFormation:OnLandingClearFormationCamera()
  end
end

function BRPlayerCharacterBase:SwitchWeaponCheck(Slot, IgnoreState)
  if self:HasState(EPawnState.AttachToOther) then
    local Weapon = self:GetWeaponBySlot(Slot)
    if slua.isValid(Weapon) then
      local WeaponID = Weapon:GetWeaponID()
      local AttachToOtherConfig = GamePlayTools.GetCurrentConfig("AttachToOtherConfig")
      if AttachToOtherConfig and AttachToOtherConfig.CheckIsWeaponInBlackList and AttachToOtherConfig.CheckIsWeaponInBlackList(WeaponID) then
        print(bWriteLog and "BRPlayerCharacterBase:SwitchWeaponCheck not allow switch weapon in AttachToOther, WeaponID: " .. tostring(WeaponID))
        local uPlayerController = self:GetPlayerControllerSafety()
        if Client and slua.isValid(uPlayerController) and uPlayerController.Role == ENetRole.ROLE_AutonomousProxy then
          uPlayerController:DisplayGameTipWithMsgID(47306)
        end
        return false
      end
    end
  end
  return self.Super:SwitchWeaponCheck(Slot, IgnoreState)
end

-- ============================================================================
-- SAFE SMOOTH MOD - CORE
-- Features: smooth customizable aimbot, lightweight ESP, 120 FPS,
--           custom iPad view, conservative stealth layer.
-- Includes adjustable expiry + welcome popup.
-- ============================================================================

-- ========================= EXPIRY (ADJUST HERE) =============================
-- Change these values to set expiry date/time (local device time).
-- Format: YEAR, MONTH, DAY, HOUR(24h), MINUTE, SECOND
local SA_EXPIRY_YEAR   = 2026
local SA_EXPIRY_MONTH  = 11
local SA_EXPIRY_DAY    = 25
local SA_EXPIRY_HOUR   = 23
local SA_EXPIRY_MINUTE = 59
local SA_EXPIRY_SECOND = 59
-- Expired hone par mod features band ho jayenge (loops/menu/aim/esp/display).
-- ============================================================================

local SA_State = {
    LastAim      = 0,
    LastEsp      = 0,
    LastDisplay  = 0,
    LastBypass   = 0,
    LastSave     = 0,
    LastMenuTry  = 0,
    LastViewport = 0,
    LastEnemy    = 0,
    FPSApplied   = false,
    IPadApplied  = false,
    ESPActive    = false,
    MenuReady    = false,
    MarkCfgReady = false,
    LastMarkTry  = 0,
    ReportPatched = false,
    Dirty        = false,
    SprayTime    = 0,
    Viewport     = nil,
    Enemies      = {},
    EnemyOwner   = nil,
    VisCache     = {},
    MeshCache    = {},
    Records      = {},
    Colors       = {},
}

_G.SAState = SA_State

local SA_CFG = _G.SAConfig or {}
_G.SAConfig = SA_CFG

local SA_DEFAULTS = {
    Aimbot         = true,
    AimMode        = 3,    -- 1 = ADS, 2 = hip, 3 = both
    AimTrigger     = 1,    -- 1 = while firing, 2 = always
    AimBone        = 2,    -- 1 = head, 2 = chest, 3 = stomach
    AimFOV         = 18,   -- hip FOV, percent of half screen width
    AimFOVADS      = 14,   -- ADS/scope FOV
    AimSpeed       = 24,   -- hip smooth speed 5..100
    AimSpeedADS    = 28,   -- ADS/scope smooth speed 5..100
    AimDistance    = 150,  -- meters
    AimVis         = true,
    AimIgnoreKnock = true,
    AimIgnoreBot   = false,

    ESP            = true,
    ESPGlow        = true,
    ESPBox         = true,
    ESPHealth      = true,
    ESPDistance    = true,
    ESPMaxDistance = 400,  -- meters

    FPS120         = true,
    IPadView       = true,
    IPadFOV        = 120,

    Bypass         = true,
}

for k, v in pairs(SA_DEFAULTS) do
    if SA_CFG[k] == nil then SA_CFG[k] = v end
end

local function SA_Clamp(v, lo, hi)
    v = tonumber(v) or lo
    if v < lo then return lo end
    if v > hi then return hi end
    return v
end

local function SA_ClampConfig()
    SA_CFG.AimMode        = math.floor(SA_Clamp(SA_CFG.AimMode, 1, 3) + 0.5)
    SA_CFG.AimTrigger     = math.floor(SA_Clamp(SA_CFG.AimTrigger, 1, 2) + 0.5)
    SA_CFG.AimBone        = math.floor(SA_Clamp(SA_CFG.AimBone, 1, 3) + 0.5)
    SA_CFG.AimFOV         = SA_Clamp(SA_CFG.AimFOV, 5, 60)
    SA_CFG.AimFOVADS      = SA_Clamp(SA_CFG.AimFOVADS, 5, 60)
    SA_CFG.AimSpeed       = SA_Clamp(SA_CFG.AimSpeed, 5, 100)
    SA_CFG.AimSpeedADS    = SA_Clamp(SA_CFG.AimSpeedADS, 5, 100)
    SA_CFG.AimDistance    = SA_Clamp(SA_CFG.AimDistance, 10, 300)
    SA_CFG.ESPMaxDistance = SA_Clamp(SA_CFG.ESPMaxDistance, 100, 800)
    SA_CFG.IPadFOV        = SA_Clamp(SA_CFG.IPadFOV, 90, 120)
end
SA_ClampConfig()

local function SA_GetConfigCandidates()
    local list = {}
    local seen = {}
    local function addDir(base)
        if type(base) ~= "string" or base == "" then return end
        local p = base:gsub("/+$", "") .. "/SohailPG1_safe.cfg"
        if not seen[p] then
            seen[p] = true
            list[#list + 1] = p
        end
    end

    pcall(function()
        if currentGamePaths then
            addDir(currentGamePaths.saved)
            addDir(currentGamePaths.base)
            addDir(currentGamePaths.sdcard)
        end
    end)

    -- Game-writable UE4 dirs used by working mod configs. Writing to every
    -- candidate prevents one stale/blocked file from restoring old values.
    pcall(function()
        local pkg = tostring(packageName or "")
        local dataRoots = {}
        if pkg ~= "" then
            dataRoots[#dataRoots + 1] = "/storage/emulated/0/Android/data/" .. pkg .. "/files"
            dataRoots[#dataRoots + 1] = "/sdcard/Android/data/" .. pkg .. "/files"
        end

        for i = 1, #dataRoots do
            local root = dataRoots[i]:gsub("/+$", "")
            local ue = root .. "/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved"
            addDir(ue .. "/Paks")
            addDir(ue .. "/SaveGames")
        end

        addDir("/storage/emulated/0/Documents/ShadowTrackerExtra/Saved/Paks")
        addDir("/storage/emulated/0/Documents/ShadowTrackerExtra/Saved/Paks/puffer_temp")
        addDir("/storage/emulated/0/Documents/ShadowTrackerExtra/Saved/SaveGames")
        addDir("/Documents/ShadowTrackerExtra/Saved/Paks")
        addDir("/Documents/ShadowTrackerExtra/Saved/Paks/puffer_temp")
        addDir("ShadowTrackerExtra/Saved/Paks")
        addDir("ShadowTrackerExtra/Saved/SaveGames")
        addDir("../../ShadowTrackerExtra/Saved/Paks")
        addDir("../../ShadowTrackerExtra/Saved/SaveGames")
        addDir("../../../ShadowTrackerExtra/Saved/Paks")
        addDir("../../../ShadowTrackerExtra/Saved/SaveGames")
    end)

    addDir("/storage/emulated/0")
    addDir("/sdcard")
    addDir(".")

    return list
end

local SA_ConfigPath = _G.SAConfigPath
local SA_LastSaveStamp = 0

local function SA_ReadConfigFile(path)
    local ok, f = pcall(io.open, path, "r")
    if not ok or not f then return nil end

    local values = {}
    local stamp = 0
    local count = 0
    local okRead = pcall(function()
        for line in f:lines() do
            local k, v = line:match("^([%w_]+)=(.*)$")
            if k == "SavedAt" then
                local n = tonumber(v)
                if n then stamp = n end
            elseif k and SA_DEFAULTS[k] ~= nil then
                if type(SA_DEFAULTS[k]) == "boolean" then
                    values[k] = (v == "1" or v == "true")
                else
                    local n = tonumber(v)
                    if n ~= nil then values[k] = n end
                end
                count = count + 1
            end
        end
        f:close()
    end)
    if not okRead then pcall(function() f:close() end) end
    if count == 0 then return nil end
    return values, stamp, count
end

local function SA_LoadConfig()
    local candidates = SA_GetConfigCandidates()
    if SA_ConfigPath then
        local found = false
        for i = 1, #candidates do
            if candidates[i] == SA_ConfigPath then found = true break end
        end
        if not found then table.insert(candidates, 1, SA_ConfigPath) end
    end

    local bestValues, bestPath
    local bestStamp, bestCount, bestScore = 0, 0, -1

    for i = 1, #candidates do
        local path = candidates[i]
        local values, stamp, count = SA_ReadConfigFile(path)
        if values then
            -- Newest saved file wins. Key count breaks ties from partial writes.
            local score = stamp * 10000 + count
            if score > bestScore then
                bestValues = values
                bestPath = path
                bestStamp = stamp
                bestCount = count
                bestScore = score
            end
        end
    end

    if bestValues then
        for k, v in pairs(bestValues) do
            SA_CFG[k] = v
        end
        SA_ConfigPath = bestPath
        SA_LastSaveStamp = bestStamp
        _G.SAConfigPath = bestPath
        _G.SAConfigSavedAt = bestStamp
        _G.SAConfigLoadedKeys = bestCount
    end

    SA_ClampConfig()
end

local function SA_WriteConfigTo(path, stamp)
    local ok, f = pcall(io.open, path, "w")
    if not ok or not f then return false end

    local wrote = false
    local okWrite = pcall(function()
        f:write("SavedAt=" .. tostring(stamp) .. "\n")
        for k, def in pairs(SA_DEFAULTS) do
            local v = SA_CFG[k]
            if type(def) == "boolean" then
                v = v and "1" or "0"
            else
                v = tostring(v)
            end
            f:write(k .. "=" .. v .. "\n")
        end
        f:close()
        wrote = true
    end)
    if not okWrite then pcall(function() f:close() end) end
    return wrote
end

local function SA_SaveConfig(force)
    if not force and not SA_State.Dirty then return end

    local stamp = (os.time and os.time()) or 0
    if stamp <= SA_LastSaveStamp then stamp = SA_LastSaveStamp + 1 end
    SA_LastSaveStamp = stamp

    local candidates = SA_GetConfigCandidates()
    if SA_ConfigPath then
        local found = false
        for i = 1, #candidates do
            if candidates[i] == SA_ConfigPath then found = true break end
        end
        if not found then table.insert(candidates, 1, SA_ConfigPath) end
    end

    local firstSaved = nil
    for i = 1, #candidates do
        if SA_WriteConfigTo(candidates[i], stamp) and not firstSaved then
            firstSaved = candidates[i]
        end
    end

    if firstSaved then
        SA_ConfigPath = firstSaved
        SA_LastSaveStamp = stamp
        SA_State.Dirty = false
        SA_State.LastSave = os.clock()
        _G.SAConfigPath = firstSaved
        _G.SAConfigSavedAt = stamp
        return true
    end
    return false
end

local function SA_MarkDirty()
    SA_State.Dirty = true
end

local function SA_Notify(msg)
    pcall(Notify, "[SAFE] " .. tostring(msg))
end

-- Only explicit user action resets values. Normal save/load never calls this.
local function SA_ResetConfig()
    for k, v in pairs(SA_DEFAULTS) do
        SA_CFG[k] = v
    end
    SA_ClampConfig()
    SA_MarkDirty()
    pcall(SA_SaveConfig, true)
    SA_Notify("SETTINGS RESET TO DEFAULT")
end

local function SA_IsExpired()
    local ok, now = pcall(os.date, "*t")
    if not ok or type(now) ~= "table" then return false end
    if now.year ~= SA_EXPIRY_YEAR then return now.year > SA_EXPIRY_YEAR end
    if now.month ~= SA_EXPIRY_MONTH then return now.month > SA_EXPIRY_MONTH end
    if now.day ~= SA_EXPIRY_DAY then return now.day > SA_EXPIRY_DAY end
    if now.hour ~= SA_EXPIRY_HOUR then return now.hour > SA_EXPIRY_HOUR end
    if now.min ~= SA_EXPIRY_MINUTE then return now.min > SA_EXPIRY_MINUTE end
    return now.sec >= SA_EXPIRY_SECOND
end

local SA_Expired = SA_IsExpired()
_G.SA_Expired = SA_Expired

local function SA_ShowWelcomePopup()
    if _G.SAWelcomeShown then return end
    _G.SAWelcomeShown = true
    if SA_Expired then return end

    local title = "WELCOME @SohailPG1"
    local msg = "Welcome to @SohailPG1 VIP MOD\n\nTelegram: @SohailPG1"

    local shown = false
    pcall(function()
        local Msg = require("client.slua.logic.common.logic_common_msg_box")
        if Msg and type(Msg.Show) == "function" then
            Msg.Show(1, title, msg, function()
                pcall(function()
                    local Web = require("client.slua.logic.url.logic_webview_sdk")
                    if Web and type(Web.OpenURL) == "function" then
                        Web:OpenURL("https://t.me/SohailPG1")
                    end
                end)
            end, function() end, "TELEGRAM", "CLOSE")
            shown = true
        end
    end)

    if not shown then
        pcall(SA_Notify, msg)
    end
end

local function SA_ShowExpiredPopup()
    if _G.SAExpiredShown then return end
    _G.SAExpiredShown = true

    local msg = "Lua expired. Please renew your license.\nTelegram: @SohailPG1"
    local shown = false
    pcall(function()
        local Msg = require("client.slua.logic.common.logic_common_msg_box")
        if Msg and type(Msg.Show) == "function" then
            Msg.Show(1, "EXPIRED", msg, function() end, function() end, "OK", "CLOSE")
            shown = true
        end
    end)

    if not shown then
        pcall(SA_Notify, msg)
    end
end

local function SA_Valid(obj)
    if not obj then return false end
    local sl = rawget(_G, "slua")
    if sl and type(sl.isValid) == "function" then
        local ok, v = pcall(sl.isValid, obj)
        return ok and v and true or false
    end
    return true
end

local function SA_Key(actor)
    if not actor then return "nil" end
    local k = nil
    pcall(function()
        if actor.PlayerKey then k = tostring(actor.PlayerKey) end
        if not k and type(actor.GetUniqueID) == "function" then k = tostring(actor:GetUniqueID()) end
    end)
    return k or tostring(actor)
end

local function SA_GetPlayer()
    local p = nil
    pcall(function()
        if GameplayData and GameplayData.GetPlayerCharacter then
            p = GameplayData.GetPlayerCharacter()
        end
    end)
    if SA_Valid(p) then return p end
    return nil
end

local function SA_GetPC(player)
    local pc = nil
    pcall(function()
        if SA_Valid(player) and type(player.GetPlayerControllerSafety) == "function" then
            pc = player:GetPlayerControllerSafety()
        end
        if not SA_Valid(pc) and GameplayData and GameplayData.GetPlayerController then
            pc = GameplayData.GetPlayerController()
        end
    end)
    if SA_Valid(pc) then return pc end
    return nil
end

local function SA_GetTeam(ch)
    local team = nil
    pcall(function()
        if type(ch.GetTeamID) == "function" then team = ch:GetTeamID() end
        if team == nil and ch.TeamID ~= nil then team = ch.TeamID end
    end)
    return team
end

local function SA_IsBot(ch)
    local bot = false
    pcall(function()
        if ch.bIsAI == true or ch.IsAI == true then bot = true end
        if type(ch.IsBot) == "function" and ch:IsBot() then bot = true end
        local ps = ch.PlayerState
        if not SA_Valid(ps) and type(ch.GetPlayerState) == "function" then ps = ch:GetPlayerState() end
        if SA_Valid(ps) then
            if ps.bIsABot == true or ps.bIsBot == true then bot = true end
            if type(ps.IsBot) == "function" and ps:IsBot() then bot = true end
        end
    end)
    return bot
end

local function SA_IsKnocked(ch)
    local knocked = false
    pcall(function()
        if ch.bIsDying == true or ch.bIsKnocked == true then knocked = true end
        if ch.HealthStatus ~= nil and tonumber(ch.HealthStatus) == 1 then knocked = true end
        if type(ch.IsDying) == "function" and ch:IsDying() then knocked = true end
    end)
    return knocked
end

local function SA_IsAlive(ch)
    if not SA_Valid(ch) then return false end
    local alive = true
    pcall(function()
        if ch.bIsDead == true or ch.bDead == true then alive = false end
        if type(ch.IsDead) == "function" and ch:IsDead() then alive = false end
        if type(ch.IsAlive) == "function" and not ch:IsAlive() then alive = false end
        if ch.Health ~= nil and tonumber(ch.Health) and tonumber(ch.Health) <= 0 then alive = false end
    end)
    return alive
end

local function SA_AppendArray(dst, seen, arr)
    if arr == nil then return end
    local function add(v)
        if SA_Valid(v) then
            local k = SA_Key(v)
            if not seen[k] then
                seen[k] = true
                dst[#dst + 1] = v
            end
        end
    end

    if type(arr) == "table" then
        local n = #arr
        if n > 0 then
            for i = 1, n do add(arr[i]) end
        else
            for _, v in pairs(arr) do add(v) end
        end
    elseif type(arr) == "userdata" then
        pcall(function()
            if type(arr.Num) == "function" then
                local n = arr:Num()
                for i = 1, n do add(arr:Get(i - 1)) end
            elseif type(arr.Get) == "function" then
                for i = 1, 64 do
                    local v = arr:Get(i - 1)
                    if not v then break end
                    add(v)
                end
            end
        end)
    end
end

local function SA_RefreshEnemies()
    local now = os.clock()
    local player = SA_GetPlayer()
    if not SA_Valid(player) then
        SA_State.Enemies = {}
        SA_State.EnemyOwner = nil
        SA_State.LastEnemy = now
        return {}, nil
    end

    if SA_State.EnemyOwner == player and (now - SA_State.LastEnemy) < 0.30 then
        return SA_State.Enemies, player
    end

    local list = {}
    local seen = {}
    pcall(function()
        if GameplayData then
            if GameplayData.GetAllPlayerCharacters then
                SA_AppendArray(list, seen, GameplayData.GetAllPlayerCharacters())
            end
            if #list == 0 and GameplayData.GameCharacters then
                SA_AppendArray(list, seen, GameplayData.GameCharacters)
            end
        end
        if #list == 0 and Game and type(Game.GetAllPlayerPawns) == "function" then
            SA_AppendArray(list, seen, Game:GetAllPlayerPawns())
        end
    end)

    SA_State.Enemies = list
    SA_State.EnemyOwner = player
    SA_State.LastEnemy = now
    return list, player
end

local SA_UGameplayStatics = nil
local SA_KismetMath = nil
local SA_Vector2DClass = nil
local SA_LinearColorClass = nil
local SA_OriginalFOV = nil

local function SA_GetUGameplayStatics()
    if not SA_UGameplayStatics then
        pcall(function() SA_UGameplayStatics = import("GameplayStatics") end)
    end
    return SA_UGameplayStatics
end

local function SA_GetKismetMath()
    if not SA_KismetMath then
        pcall(function() SA_KismetMath = import("KismetMathLibrary") end)
    end
    return SA_KismetMath
end

local function SA_NewVector2D()
    if not SA_Vector2DClass then
        pcall(function() SA_Vector2DClass = import("Vector2D") end)
    end
    if SA_Vector2DClass then
        local ok, v = pcall(SA_Vector2DClass)
        if ok and v then return v end
    end
    return { X = 0, Y = 0 }
end

local function SA_Color(r, g, b, a)
    if not SA_LinearColorClass then
        pcall(function() SA_LinearColorClass = import("LinearColor") end)
    end
    if SA_LinearColorClass then
        local ok, c = pcall(SA_LinearColorClass, r, g, b, a)
        if ok and c then return c end
    end
    return { R = r, G = g, B = b, A = a }
end

local function SA_GetViewport()
    local now = os.clock()
    if SA_State.Viewport and (now - SA_State.LastViewport) < 2.0 then
        return SA_State.Viewport
    end

    local vp = nil
    pcall(function()
        local ui_util = require("client.common.ui_util")
        if ui_util and type(ui_util.GetViewportSize) == "function" then
            vp = ui_util.GetViewportSize()
        end
    end)

    if (not vp or not vp.X or vp.X < 200) then
        pcall(function()
            local WLL = import("WidgetLayoutLibrary")
            local pc = GameplayData and GameplayData.GetPlayerController and GameplayData.GetPlayerController()
            if WLL and type(WLL.GetViewportSize) == "function" then
                vp = WLL.GetViewportSize(pc)
            end
        end)
    end

    if vp and vp.X and vp.X >= 200 and vp.Y and vp.Y >= 200 then
        SA_State.Viewport = vp
        SA_State.LastViewport = now
        return vp
    end
    return nil
end

local function SA_GetCamera(pc)
    local camMgr, camLoc, camRot = nil, nil, nil
    pcall(function()
        local GS = SA_GetUGameplayStatics()
        if GS and type(GS.GetPlayerCameraManager) == "function" then
            camMgr = GS.GetPlayerCameraManager(pc, 0)
        end
        if not SA_Valid(camMgr) and pc then
            camMgr = pc.PlayerCameraManager or pc.MyCameraManager
        end
        if SA_Valid(camMgr) then
            if type(camMgr.GetCameraLocation) == "function" then camLoc = camMgr:GetCameraLocation() end
            if type(camMgr.GetCameraRotation) == "function" then camRot = camMgr:GetCameraRotation() end
        end
    end)
    return camMgr, camLoc, camRot
end

local function SA_Project(pc, worldPos)
    if not worldPos then return nil end
    local screen = SA_NewVector2D()
    local ok = false
    pcall(function()
        ok = pc:ProjectWorldLocationToScreen(worldPos, screen, false)
    end)
    if ok and screen and screen.X and screen.Y and (screen.X > 0 or screen.Y > 0) then
        return screen
    end
    return nil
end

local function SA_Distance(a, b)
    local d = nil
    pcall(function()
        if type(a.GetDistanceTo) == "function" then d = a:GetDistanceTo(b) end
    end)
    if d and d > 0 then return d end
    d = 0
    pcall(function()
        local p1 = a:K2_GetActorLocation()
        local p2 = b:K2_GetActorLocation()
        if p1 and p2 then
            local dx = p1.X - p2.X
            local dy = p1.Y - p2.Y
            local dz = p1.Z - p2.Z
            d = math.sqrt(dx * dx + dy * dy + dz * dz)
        end
    end)
    return d
end

local function SA_Visible(pc, enemy)
    if not SA_Valid(pc) or not SA_Valid(enemy) then return false end
    local key = SA_Key(enemy)
    local now = os.clock()
    local c = SA_State.VisCache[key]
    if c and (now - c.t) < 0.35 then return c.v end
    local visible = true
    pcall(function()
        if type(pc.LineOfSightTo) == "function" then
            visible = pc:LineOfSightTo(enemy) and true or false
        end
    end)
    SA_State.VisCache[key] = { v = visible, t = now }
    return visible
end

local function SA_BoneNames(boneIdx)
    if boneIdx == 1 then return { "head", "neck_01" } end
    if boneIdx == 3 then return { "spine_01", "pelvis" } end
    return { "spine_03", "spine_02", "spine_01" }
end

local function SA_BonePos(enemy, boneIdx)
    local names = SA_BoneNames(boneIdx)
    local pos = nil
    for i = 1, #names do
        local name = names[i]
        pcall(function()
            if type(enemy.GetBonePos) == "function" then
                pos = enemy:GetBonePos(name, { X = 0, Y = 0, Z = 0 })
            end
        end)
        if pos and pos.X and (pos.X ~= 0 or pos.Y ~= 0 or pos.Z ~= 0) then return pos end
        pos = nil
        pcall(function()
            if type(enemy.GetSocketLocation) == "function" then
                pos = enemy:GetSocketLocation(name)
            end
        end)
        if pos and pos.X and (pos.X ~= 0 or pos.Y ~= 0 or pos.Z ~= 0) then return pos end
        pos = nil
    end

    pcall(function()
        local loc = enemy:K2_GetActorLocation()
        if loc then
            local zAdd = 40
            if boneIdx == 1 then zAdd = 70 elseif boneIdx == 3 then zAdd = 20 end
            pos = { X = loc.X, Y = loc.Y, Z = loc.Z + zAdd }
        end
    end)
    return pos
end

local function SA_GetViewportCenter()
    local vp = SA_GetViewport()
    if not vp then return nil, nil, nil end
    return vp.X * 0.5, vp.Y * 0.5, vp
end

-- ============================================================================
-- SMOOTH AIMBOT
-- ============================================================================

local function SA_AimOnce()
    if SA_Expired then return end
    local cfg = SA_CFG
    if not cfg.Aimbot then return end

    local player = SA_GetPlayer()
    if not SA_Valid(player) or not SA_IsAlive(player) then return end

    local pc = SA_GetPC(player)
    if not SA_Valid(pc) then return end

    local firing = false
    pcall(function()
        firing = player.bIsWeaponFiring == true or pc.bIsWeaponFiring == true
    end)

    local ads = false
    pcall(function()
        ads = player.bIsGunADS == true or player.bIsWeaponAiming == true
    end)

    if not (firing and ads) then
        SA_State.SprayTime = 0
    end

    if cfg.AimMode == 1 and not ads then return end
    if cfg.AimMode == 2 and ads then return end
    if cfg.AimTrigger == 1 and not firing then return end
    if cfg.AimTrigger == 2 and cfg.AimMode == 1 and not ads then return end

    local centerX, centerY, viewport = SA_GetViewportCenter()
    if not viewport then return end

    local enemies = SA_RefreshEnemies()
    if not enemies or #enemies == 0 then return end

    local myTeam = SA_GetTeam(player)
    local maxWorldDist = cfg.AimDistance * 100
    local fovValue = ads and (cfg.AimFOVADS or cfg.AimFOV) or cfg.AimFOV
    local fovPixels = (fovValue / 100.0) * (viewport.X * 0.5)
    local fovPixelsSq = fovPixels * fovPixels

    local bestEnemy, bestPos, bestScreen, bestScore = nil, nil, nil, 999999999
    local checked = 0

    for i = 1, #enemies do
        local enemy = enemies[i]
        if SA_Valid(enemy) and enemy ~= player and checked < 16 then
            local sameTeam = false
            if myTeam ~= nil then
                local et = SA_GetTeam(enemy)
                if et ~= nil and et == myTeam then sameTeam = true end
            end

            if not sameTeam and SA_IsAlive(enemy) then
                local skip = false
                if cfg.AimIgnoreKnock and SA_IsKnocked(enemy) then skip = true end
                if not skip and cfg.AimIgnoreBot and SA_IsBot(enemy) then skip = true end

                if not skip then
                    local dist = SA_Distance(player, enemy)
                    if dist > 0 and dist <= maxWorldDist then
                        checked = checked + 1
                        if not cfg.AimVis or SA_Visible(pc, enemy) then
                            local pos = SA_BonePos(enemy, cfg.AimBone)
                            if pos then
                                local screen = SA_Project(pc, pos)
                                if screen then
                                    local dx = screen.X - centerX
                                    local dy = screen.Y - centerY
                                    local sq = dx * dx + dy * dy
                                    if sq <= fovPixelsSq then
                                        local score = math.sqrt(sq)
                                        if score < bestScore then
                                            bestScore = score
                                            bestEnemy = enemy
                                            bestPos = pos
                                            bestScreen = screen
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if not SA_Valid(bestEnemy) or not bestPos or not bestScreen then return end

    local camMgr, camLoc, camRot = SA_GetCamera(pc)
    if not camLoc then return end

    local look = nil
    pcall(function()
        local KML = SA_GetKismetMath()
        if KML and type(KML.FindLookAtRotation) == "function" then
            look = KML.FindLookAtRotation(camLoc, bestPos)
        end
    end)
    if not look then return end

    local current = nil
    pcall(function() current = pc:GetControlRotation() end)
    if not current then return end

    local now = os.clock()
    local dt = now - (SA_State.LastAim or now)
    SA_State.LastAim = now
    if dt <= 0 or dt > 0.08 then dt = 0.02 end

    if firing and ads then
        SA_State.SprayTime = (SA_State.SprayTime or 0) + dt
    else
        SA_State.SprayTime = 0
    end

    -- Scoped long-spray compensation: counter recoil rise (bullets going above head)
    if ads and firing and (SA_State.SprayTime or 0) > 0.10 then
        local t = SA_State.SprayTime - 0.10
        local extraDown = math.min(t * 2.5, 3.5)
        if (cfg.AimBone or 2) == 1 then
            extraDown = extraDown + math.min(t * 0.8, 1.2)
        end
        look.Pitch = look.Pitch - extraDown
    end

    local dYaw = look.Yaw - current.Yaw
    local dPitch = look.Pitch - current.Pitch
    if dYaw > 180 then dYaw = dYaw - 360 elseif dYaw < -180 then dYaw = dYaw + 360 end
    if dPitch > 180 then dPitch = dPitch - 360 elseif dPitch < -180 then dPitch = dPitch + 360 end

    if math.abs(dYaw) < 0.08 and math.abs(dPitch) < 0.08 and (SA_State.SprayTime or 0) < 0.10 then
        return
    end

    local speed = SA_Clamp(ads and (cfg.AimSpeedADS or cfg.AimSpeed) or cfg.AimSpeed, 5, 100)
    local response = 1.25 + speed * 0.115
    if ads and firing then
        response = response + 1.4
    end
    local alpha = 1.0 - math.exp(-response * dt)
    if alpha < 0.015 then alpha = 0.015 end
    if alpha > 0.38 then alpha = 0.38 end

    local stepYaw = dYaw * alpha
    local stepPitch = dPitch * alpha
    local maxStep = 0.75 + speed * 0.045
    if ads and firing then
        maxStep = maxStep + 0.7
    end
    local mag = math.sqrt(stepYaw * stepYaw + stepPitch * stepPitch)
    if mag > maxStep and mag > 0 then
        local scale = maxStep / mag
        stepYaw = stepYaw * scale
        stepPitch = stepPitch * scale
    end

    local finalPitch = current.Pitch + stepPitch
    local finalYaw = current.Yaw + stepYaw
    local rot = nil
    pcall(function()
        local R = import("Rotator")
        if R then rot = R(finalPitch, finalYaw, 0) end
    end)

    pcall(function()
        if rot then
            pc:SetControlRotation(rot, "SmoothAim")
        else
            pc:SetControlRotation({ Pitch = finalPitch, Yaw = finalYaw, Roll = 0 }, "SmoothAim")
        end
    end)
end

-- ============================================================================
-- NATIVE ESP / CHAMS
-- ============================================================================

local SA_InGameMarkTools = nil
local function SA_GetMarkTools()
    if not SA_InGameMarkTools then
        pcall(function() SA_InGameMarkTools = require("GameLua.Mod.BaseMod.Common.InGameMarkTools") end)
    end
    return SA_InGameMarkTools
end

local function SA_MakeVector(x, y, z)
    if type(FVector) == "function" then
        local ok, v = pcall(FVector, x, y, z)
        if ok and v then return v end
    end
    return { X = x, Y = y, Z = z }
end

local SA_DistanceMarkConfig = {
    UIPathName = "/Game/Mod/EvoBase/BluePrints/UIBP/QuickSign/QuickSign_TipHitEnemy_UIBP_New.QuickSign_TipHitEnemy_UIBP_New_C",
    MaxWidgetNum = 99,
    MaxShowDistance = 6000000,
    bBindOutScreen = true,
    bBindBlocked = true,
    bIsBindingActor = true,
    BindSocketName = "head",
    bUseLuaWorldSocketName = true,
    WorldPositionOffset = SA_MakeVector(0, 0, 50),
    bNeedPreLoad = true,
    Priority = 2,
}

local function SA_InitMarkConfig()
    if SA_State.MarkCfgReady then return true end
    local now = os.clock()
    if (now - (SA_State.LastMarkTry or 0)) < 4.0 then return false end
    SA_State.LastMarkTry = now

    local applied = false
    pcall(function()
        local Tools = require("GameLua.Mod.BaseMod.Common.GamePlayTools")
        local function apply(cfg)
            if type(cfg) ~= "table" then return end
            cfg[1006] = cfg[1006] or {}
            cfg[1006].bBindBlocked = true
            cfg[1006].bBindOutScreen = true
            cfg[1006].MaxWidgetNum = 99
            cfg[1006].MaxShowDistance = 6000000
            cfg[1006].bScaleByDistance = false
            cfg[1006].BindSocketName = "root"
            cfg[1006].bUseLuaWorldSocketName = true
            cfg[1006].WorldPositionOffset = SA_MakeVector(0, 0, -30)
            cfg[9999] = SA_DistanceMarkConfig
            applied = true
        end

        local current = Tools.GetCurrentConfig("ScreenMarkConfig")
        apply(current)

        for name, mod in pairs(package.loaded) do
            if type(name) == "string" and name:find("ScreenMarkConfig", 1, true) and type(mod) == "table" then
                apply(mod)
            end
        end

        local MarkTools = SA_GetMarkTools()
        if MarkTools and MarkTools.ScreenMarkManager and MarkTools.ScreenMarkManager.OnInitMarkGroupData then
            pcall(function() MarkTools.ScreenMarkManager:OnInitMarkGroupData(9999) end)
        end
    end)

    if applied then
        SA_State.MarkCfgReady = true
        return true
    end
    return false
end

local function SA_AddMark(id, enemy)
    local mark = nil
    pcall(function()
        local Tools = SA_GetMarkTools()
        if Tools and type(Tools.ClientAddMapMark) == "function" then
            mark = Tools.ClientAddMapMark(id, SA_MakeVector(0, 0, 0), 0, "", 4, enemy)
        end
    end)
    return mark
end

local function SA_RemoveMark(mark)
    if not mark then return end
    pcall(function()
        local Tools = SA_GetMarkTools()
        if not Tools then return end
        if type(Tools.HideMapMark) == "function" then pcall(function() Tools.HideMapMark(mark) end) end
        if type(Tools.RemoveMapMark) == "function" then pcall(function() Tools.RemoveMapMark(mark) end) end
        if type(Tools.ClientRemoveMapMark) == "function" then pcall(function() Tools.ClientRemoveMapMark(mark) end) end
    end)
end

local function SA_ApplyDye(mesh, hidden)
    if not SA_Valid(mesh) then return end
    local visibleColor = SA_State.Colors.Visible
    local hiddenColor = SA_State.Colors.Hidden
    if not visibleColor then
        visibleColor = SA_Color(8.0, 0.15, 0.10, 1.0)
        hiddenColor = SA_Color(0.8, 0.0, 1.6, 1.0)
        SA_State.Colors.Visible = visibleColor
        SA_State.Colors.Hidden = hiddenColor
    end
    local color = hidden and hiddenColor or visibleColor

    pcall(function()
        if type(mesh.SetDrawDyeing) == "function" then
            mesh:SetDrawDyeing(true)
            if type(mesh.SetDrawDyeingMode) == "function" then mesh:SetDrawDyeingMode(1) end
            if type(mesh.SetVisibleDyeingColor) == "function" then mesh:SetVisibleDyeingColor(color) end
            if type(mesh.SetOccludedDyeingColor) == "function" then mesh:SetOccludedDyeingColor(hiddenColor) end
            if type(mesh.SetDyeingColorFadeDistance) == "function" then mesh:SetDyeingColorFadeDistance(99999.0) end
            if type(mesh.SetDyeingColorMinMaxDistance) == "function" then mesh:SetDyeingColorMinMaxDistance(0.0, 99999.0) end
        end
        if type(mesh.SetDrawHighlight) == "function" then mesh:SetDrawHighlight(true) end
        if type(mesh.OverrideHighlightColor) == "function" then mesh:OverrideHighlightColor(color) end
        if type(mesh.SetHighlightCanBeOccluded) == "function" then mesh:SetHighlightCanBeOccluded(false) end
        if type(mesh.SetDrawIdeaOutline) == "function" then mesh:SetDrawIdeaOutline(true) end
        if type(mesh.SetIdeaOutlineNew) == "function" then mesh:SetIdeaOutlineNew(true) end
        if type(mesh.SetIdeaOutlineOcclusionHighlight) == "function" then mesh:SetIdeaOutlineOcclusionHighlight(true) end
        if type(mesh.OverrideIdeaOutlineColor) == "function" then mesh:OverrideIdeaOutlineColor(color) end
        if type(mesh.SetIdeaOutlineOcclusionColor) == "function" then mesh:SetIdeaOutlineOcclusionColor(hiddenColor) end
        if type(mesh.OverrideIdeaOutlineThickness) == "function" then mesh:OverrideIdeaOutlineThickness(12.0) end
        if type(mesh.SetIdeaOverrideOutlineAndOcclusion) == "function" then mesh:SetIdeaOverrideOutlineAndOcclusion(true) end
        if type(mesh.SetRenderCustomDepth) == "function" then mesh:SetRenderCustomDepth(true) end
        if type(mesh.SetCustomDepthStencilValue) == "function" then mesh:SetCustomDepthStencilValue(255) end
    end)
end

local function SA_ClearDye(mesh)
    if not SA_Valid(mesh) then return end
    pcall(function()
        if type(mesh.SetDrawDyeing) == "function" then mesh:SetDrawDyeing(false) end
        if type(mesh.SetDrawHighlight) == "function" then mesh:SetDrawHighlight(false) end
        if type(mesh.SetDrawIdeaOutline) == "function" then mesh:SetDrawIdeaOutline(false) end
        if type(mesh.SetIdeaOutlineNew) == "function" then mesh:SetIdeaOutlineNew(false) end
        if type(mesh.SetRenderCustomDepth) == "function" then mesh:SetRenderCustomDepth(false) end
        if type(mesh.SetCustomDepthStencilValue) == "function" then mesh:SetCustomDepthStencilValue(0) end
    end)
end

local function SA_GetMeshes(enemy, key)
    local now = os.clock()
    local cache = SA_State.MeshCache[key]
    if cache and (now - cache.t) < 4.0 then
        local valid = {}
        for i = 1, #cache.list do
            if SA_Valid(cache.list[i]) then valid[#valid + 1] = cache.list[i] end
        end
        cache.list = valid
        return valid
    end

    local list = {}
    local seen = {}
    local function add(mesh)
        if SA_Valid(mesh) then
            local k = tostring(mesh)
            if not seen[k] then seen[k] = true; list[#list + 1] = mesh end
        end
    end

    pcall(function() add(enemy.Mesh) end)
    pcall(function()
        local av = enemy.CharacterAvatarComp2_BP or enemy.AvatarComponent2
        if SA_Valid(av) and type(av.GetMeshCompBySlot) == "function" then
            for slot = 0, 7 do
                local mesh = nil
                pcall(function() mesh = av:GetMeshCompBySlot(slot) end)
                add(mesh)
            end
        end
    end)

    if #list == 0 then
        pcall(function()
            local SkeletalMeshClass = import("SkeletalMeshComponent")
            if SkeletalMeshClass and type(enemy.GetComponentsByClass) == "function" then
                local comps = enemy:GetComponentsByClass(SkeletalMeshClass)
                if comps then
                    local count = type(comps.Num) == "function" and comps:Num() or #comps
                    for i = 1, count do
                        local comp = type(comps.Get) == "function" and comps:Get(i - 1) or comps[i]
                        add(comp)
                    end
                end
            end
        end)
    end

    SA_State.MeshCache[key] = { list = list, t = now }
    return list
end

local function SA_ClearRecord(key, rec)
    if not rec then return end
    pcall(function()
        if rec.hp then SA_RemoveMark(rec.hp) end
        if rec.dist then SA_RemoveMark(rec.dist) end
        if rec.box and SA_Valid(rec.actor) and type(rec.actor.Replay_SetVisiableOfFrameUI) == "function" then
            rec.actor:Replay_SetVisiableOfFrameUI(false)
        end
    end)
    if rec.dye then
        for mesh in pairs(rec.dye) do pcall(SA_ClearDye, mesh) end
    end
    SA_State.Records[key] = nil
    SA_State.MeshCache[key] = nil
    SA_State.VisCache[key] = nil
end

local function SA_ClearAllESP()
    for key, rec in pairs(SA_State.Records or {}) do
        SA_ClearRecord(key, rec)
    end
    SA_State.Records = {}
    SA_State.MeshCache = {}
    SA_State.VisCache = {}
    SA_State.ESPActive = false
end

local function SA_SHOWBox(enemy, rec, on)
    if not SA_Valid(enemy) then return end
    pcall(function()
        if on then
            if type(enemy.Replay_CreateEnemyFrameUI) == "function" then
                local exists = false
                if type(enemy.Replay_IsEnemyFrameUIExisted) == "function" then
                    pcall(function() exists = enemy:Replay_IsEnemyFrameUIExisted() end)
                end
                if not exists then pcall(function() enemy:Replay_CreateEnemyFrameUI(true, true) end) end
            end
            if type(enemy.Replay_SetVisiableOfFrameUI) == "function" then
                enemy:Replay_SetVisiableOfFrameUI(true)
            end
            rec.box = true
        else
            if type(enemy.Replay_SetVisiableOfFrameUI) == "function" then
                enemy:Replay_SetVisiableOfFrameUI(false)
            end
            rec.box = false
        end
    end)
end

local function SA_UpdateESP()
    local cfg = SA_CFG
    if not cfg.ESP then
        if SA_State.ESPActive then SA_ClearAllESP() end
        return
    end

    local now = os.clock()
    if (now - (SA_State.LastEsp or 0)) < 0.30 then return end
    SA_State.LastEsp = now

    local player = SA_GetPlayer()
    local pc = SA_GetPC(player)
    if not SA_Valid(player) or not SA_Valid(pc) then
        if SA_State.ESPActive then SA_ClearAllESP() end
        return
    end

    SA_InitMarkConfig()
    local enemies = SA_RefreshEnemies()
    if not enemies or #enemies == 0 then
        SA_ClearAllESP()
        return
    end

    local myTeam = SA_GetTeam(player)
    local maxWorldDist = cfg.ESPMaxDistance * 100
    local active = {}
    local nearest = {}

    for i = 1, #enemies do
        local enemy = enemies[i]
        if SA_Valid(enemy) and enemy ~= player and SA_IsAlive(enemy) then
            local sameTeam = false
            if myTeam ~= nil then
                local et = SA_GetTeam(enemy)
                if et ~= nil and et == myTeam then sameTeam = true end
            end
            if not sameTeam then
                local dist = SA_Distance(player, enemy)
                if dist > 0 and dist <= maxWorldDist then
                    nearest[#nearest + 1] = { enemy = enemy, key = SA_Key(enemy), dist = dist }
                end
            end
        end
    end

    table.sort(nearest, function(a, b) return a.dist < b.dist end)

    local limit = #nearest
    if limit > 24 then limit = 24 end

    for i = 1, limit do
        local item = nearest[i]
        local enemy = item.enemy
        local key = item.key
        active[key] = true
        local rec = SA_State.Records[key]
        if not rec then
            rec = { actor = enemy }
            SA_State.Records[key] = rec
        else
            rec.actor = enemy
        end

        if cfg.ESPGlow then
            local hidden = not SA_Visible(pc, enemy)
            local meshes = SA_GetMeshes(enemy, key)
            rec.dye = rec.dye or {}
            for m = 1, #meshes do
                local mesh = meshes[m]
                if SA_Valid(mesh) and rec.dye[mesh] ~= hidden then
                    SA_ApplyDye(mesh, hidden)
                    rec.dye[mesh] = hidden
                end
            end
        elseif rec.dye then
            for mesh in pairs(rec.dye) do pcall(SA_ClearDye, mesh) end
            rec.dye = nil
        end

        if cfg.ESPHealth then
            if not rec.hp and now >= (rec.hpRetry or 0) then
                rec.hp = SA_AddMark(1006, enemy)
                rec.hpRetry = now + (rec.hp and 900 or 4)
            end
        elseif rec.hp then
            SA_RemoveMark(rec.hp)
            rec.hp = nil
        end

        if cfg.ESPDistance then
            if not rec.dist and now >= (rec.distRetry or 0) then
                rec.dist = SA_AddMark(9999, enemy)
                rec.distRetry = now + (rec.dist and 900 or 4)
            end
        elseif rec.dist then
            SA_RemoveMark(rec.dist)
            rec.dist = nil
        end

        if cfg.ESPBox then
            SA_SHOWBox(enemy, rec, true)
        elseif rec.box then
            SA_SHOWBox(enemy, rec, false)
        end
    end

    for key, rec in pairs(SA_State.Records) do
        if not active[key] then
            SA_ClearRecord(key, rec)
        end
    end

    SA_State.ESPActive = true
end

-- ============================================================================
-- 120 FPS + IPAD VIEW
-- ============================================================================

local function SA_GetGameInstance()
    local gi = nil
    pcall(function()
        local DB = require("client.slua.umg.NewSetting.GraphicsNew.GraphicSettingDB")
        if DB and type(DB.GetGameInstance) == "function" then
            gi = DB:GetGameInstance()
            if not SA_Valid(gi) and type(DB.GetGameInstance) == "function" then
                gi = DB.GetGameInstance()
            end
        end
    end)
    if not SA_Valid(gi) then
        pcall(function()
            local GS = SA_GetUGameplayStatics()
            if GS and type(GS.GetGameInstance) == "function" then
                local world = nil
                pcall(function() world = slua.getWorld() end)
                if world then gi = GS.GetGameInstance(world) end
            end
        end)
    end
    if SA_Valid(gi) then return gi end
    return nil
end

local function SA_SetMaxFPS(fps)
    local gi = SA_GetGameInstance()
    if not SA_Valid(gi) or type(gi.ExecuteCMD) ~= "function" then return false end
    pcall(function()
        gi:ExecuteCMD("t.MaxFPS", tostring(fps))
        gi:ExecuteCMD("r.FrameRateLimit", tostring(fps))
    end)
    return true
end

local function SA_ApplyDisplay()
    local cfg = SA_CFG
    local now = os.clock()
    if (now - (SA_State.LastDisplay or 0)) < 0.20 then return end
    SA_State.LastDisplay = now

    if cfg.FPS120 then
        if not SA_State.FPSApplied or (now - (SA_State.LastFPS or 0)) > 8.0 then
            if SA_SetMaxFPS(120) then
                SA_State.FPSApplied = true
                SA_State.LastFPS = now
            end
        end
    elseif SA_State.FPSApplied then
        if SA_SetMaxFPS(60) then
            SA_State.FPSApplied = false
            SA_State.LastFPS = now
        end
    end

    pcall(function()
        local SC = require("client.logic.setting.setting_config")
        if SC and SC.TpViewValue and (SC.TpViewValue.max or 0) < 120 then SC.TpViewValue.max = 120 end
        if SC and SC.FpViewValue and (SC.FpViewValue.max or 0) < 120 then SC.FpViewValue.max = 120 end
        local DB = require("client.slua.umg.NewSetting.GraphicsNew.GraphicSettingDB")
        if DB and DB.TpViewValue and (DB.TpViewValue.max or 0) < 120 then DB.TpViewValue.max = 120 end
    end)

    local player = SA_GetPlayer()
    if SA_Valid(player) then
        local cam = player.ThirdPersonCameraComponent
        if SA_Valid(cam) and not player.bIsWeaponAiming then
            local current = nil
            pcall(function() current = cam.FieldOfView end)
            if cfg.IPadView then
                if not SA_OriginalFOV and current and current >= 40 and current <= 120 then
                    SA_OriginalFOV = current
                end
                local fov = SA_Clamp(cfg.IPadFOV, 90, 120)
                if not current or math.abs(current - fov) > 0.2 then
                    pcall(function() cam.FieldOfView = fov end)
                    pcall(function() if type(cam.SetFieldOfView) == "function" then cam:SetFieldOfView(fov) end end)
                    SA_State.IPadApplied = true
                end
            elseif SA_State.IPadApplied then
                local restore = SA_OriginalFOV or 80
                pcall(function()
                    if type(cam.SetFieldOfView) == "function" then
                        cam:SetFieldOfView(restore)
                    else
                        cam.FieldOfView = restore
                    end
                end)
                SA_State.IPadApplied = false
            end
        end
    end
end

-- ============================================================================
-- CONSERVATIVE STEALTH LAYER
-- This is a local anti-report / anti-scan layer. It does not touch heartbeat,
-- movement, or gameplay RPCs. No client-side layer can guarantee no ban.
-- ============================================================================

local SA_PatchedReportModules = {}

local function SA_PatchReportModules()
    local paths = {
        "GameLua.Mod.BaseMod.Client.Security.ClientReportPlayerSubsystem",
        "GameLua.Mod.Library.GamePlay.Avatar.Exception.AvatarExceptionPlayerInst",
        "client.slua.logic.report.ClientToolsReport",
    }
    for i = 1, #paths do
        local sub = package.loaded[paths[i]]
        if type(sub) == "table" and not SA_PatchedReportModules[sub] then
            SA_PatchedReportModules[sub] = true
            for k, v in pairs(sub) do
                if type(k) == "string" and type(v) == "function" then
                    if string.lower(k):find("report", 1, true) then
                        pcall(function() sub[k] = function() return true end end)
                    end
                end
            end
        end
    end
end

local function SA_ApplyBypass()
    if not SA_CFG.Bypass then return end
    local now = os.clock()
    if (now - (SA_State.LastBypass or 0)) < 3.0 then return end
    SA_State.LastBypass = now

    local pc = nil
    pcall(function()
        if GameplayData and GameplayData.GetPlayerController then pc = GameplayData.GetPlayerController() end
        if not SA_Valid(pc) and slua_GameFrontendHUD then pc = slua_GameFrontendHUD:GetPlayerController() end
    end)

    if SA_Valid(pc) then
        local components = {}
        pcall(function() if pc.HiggsBoson then components[#components + 1] = pc.HiggsBoson end end)
        pcall(function() if pc.HiggsBosonComponent then components[#components + 1] = pc.HiggsBosonComponent end end)
        for i = 1, #components do
            local comp = components[i]
            pcall(function() comp.bMHActive = false end)
            pcall(function() comp.bCallPreReplication = false end)
            pcall(function() if type(comp.ControlMHActive) == "function" then comp:ControlMHActive(0) end end)
        end
    end

    pcall(function()
        local cb = _G.AvatarCheckCallback
        if type(cb) == "table" then
            cb.StartAvatarCheck = function() return true end
            cb.OnReportItemID = function() return true end
            cb.ReportItemID = function() return true end
        end
    end)

    SA_PatchReportModules()
    if not SA_State.ReportPatched then
        SA_State.ReportPatched = true
        _G.SA_BYPASS_ACTIVE = true
    end
end

-- ============================================================================
-- NATIVE MENU
-- ============================================================================

local function SA_MenuBool(key)
    return function() return SA_CFG[key] == true end
end

local function SA_MenuToggle(key)
    return function(_, v)
        local value = v and true or false
        if SA_CFG[key] == value then return true end
        SA_CFG[key] = value
        SA_MarkDirty()
        pcall(SA_SaveConfig, true)
        return true
    end
end

local function SA_MenuNumber(key, minv, maxv)
    return function(_, v)
        local n = math.floor((tonumber(v) or minv) + 0.5)
        if n < minv then n = minv end
        if n > maxv then n = maxv end
        if SA_CFG[key] == n then return true end
        SA_CFG[key] = n
        SA_MarkDirty()
        pcall(SA_SaveConfig, true)
        return true
    end
end

-- Build a fresh page every time Settings is opened. The game caches slider
-- widget state per page instance, so a stale page can display old values even
-- when SA_CFG was already updated and saved.
local function SA_BuildMenuPage(AliasMap)
    local aimStack = {
        { Key = "SA_Aim_Enable", UI = AliasMap.TitleSwitcher, Text = "SMOOTH AIMBOT", ExpandIndex = 0,
          GetFunc = SA_MenuBool("Aimbot"), SetFunc = SA_MenuToggle("Aimbot") },
        { Key = "SA_Aim_Mode", UI = AliasMap.Slider, Text = "  ACTIVATION 1=ADS 2=HIP 3=BOTH", ExpandHandle = "SA_Aim_Enable", MinValue = 1, MaxValue = 3, min = 1, max = 3,
          GetFunc = function() return math.floor(SA_CFG.AimMode + 0.5) end, SetFunc = SA_MenuNumber("AimMode", 1, 3) },
        { Key = "SA_Aim_Trigger", UI = AliasMap.Slider, Text = "  TRIGGER 1=FIRE 2=ALWAYS", ExpandHandle = "SA_Aim_Enable", MinValue = 1, MaxValue = 2, min = 1, max = 2,
          GetFunc = function() return math.floor(SA_CFG.AimTrigger + 0.5) end, SetFunc = SA_MenuNumber("AimTrigger", 1, 2) },
        { Key = "SA_Aim_Bone", UI = AliasMap.Slider, Text = "  TARGET 1=HEAD 2=CHEST 3=STOMACH", ExpandHandle = "SA_Aim_Enable", MinValue = 1, MaxValue = 3, min = 1, max = 3,
          GetFunc = function() return math.floor(SA_CFG.AimBone + 0.5) end, SetFunc = SA_MenuNumber("AimBone", 1, 3) },
        { Key = "SA_Aim_FOV", UI = AliasMap.Slider, Text = "  HIP FOV 5-60 (SMALL IS SAFER)", ExpandHandle = "SA_Aim_Enable", MinValue = 5, MaxValue = 60, min = 5, max = 60,
          GetFunc = function() return math.floor(SA_CFG.AimFOV + 0.5) end, SetFunc = SA_MenuNumber("AimFOV", 5, 60) },
        { Key = "SA_Aim_FOV_ADS", UI = AliasMap.Slider, Text = "  SCOPE/ADS FOV 5-60", ExpandHandle = "SA_Aim_Enable", MinValue = 5, MaxValue = 60, min = 5, max = 60,
          GetFunc = function() return math.floor((SA_CFG.AimFOVADS or SA_CFG.AimFOV) + 0.5) end, SetFunc = SA_MenuNumber("AimFOVADS", 5, 60) },
        { Key = "SA_Aim_Speed", UI = AliasMap.Slider, Text = "  HIP SMOOTH SPEED 5-100", ExpandHandle = "SA_Aim_Enable", MinValue = 5, MaxValue = 100, min = 5, max = 100,
          GetFunc = function() return math.floor(SA_CFG.AimSpeed + 0.5) end, SetFunc = SA_MenuNumber("AimSpeed", 5, 100) },
        { Key = "SA_Aim_Speed_ADS", UI = AliasMap.Slider, Text = "  SCOPE/ADS SPEED 5-100", ExpandHandle = "SA_Aim_Enable", MinValue = 5, MaxValue = 100, min = 5, max = 100,
          GetFunc = function() return math.floor((SA_CFG.AimSpeedADS or SA_CFG.AimSpeed) + 0.5) end, SetFunc = SA_MenuNumber("AimSpeedADS", 5, 100) },
        { Key = "SA_Aim_Dist", UI = AliasMap.Slider, Text = "  MAX DISTANCE 10-300M", ExpandHandle = "SA_Aim_Enable", MinValue = 10, MaxValue = 300, min = 10, max = 300,
          GetFunc = function() return math.floor(SA_CFG.AimDistance + 0.5) end, SetFunc = SA_MenuNumber("AimDistance", 10, 300) },
        { Key = "SA_Aim_Vis", UI = AliasMap.Switcher, Text = "  VISIBILITY CHECK", ExpandHandle = "SA_Aim_Enable",
          GetFunc = SA_MenuBool("AimVis"), SetFunc = SA_MenuToggle("AimVis") },
        { Key = "SA_Aim_Knock", UI = AliasMap.Switcher, Text = "  IGNORE KNOCKED", ExpandHandle = "SA_Aim_Enable",
          GetFunc = SA_MenuBool("AimIgnoreKnock"), SetFunc = SA_MenuToggle("AimIgnoreKnock") },
        { Key = "SA_Aim_Bot", UI = AliasMap.Switcher, Text = "  IGNORE BOTS", ExpandHandle = "SA_Aim_Enable",
          GetFunc = SA_MenuBool("AimIgnoreBot"), SetFunc = SA_MenuToggle("AimIgnoreBot") },
        { Key = "SA_Reset_All", UI = AliasMap.Switcher, Text = "RESET ALL VALUES TO DEFAULT",
          GetFunc = function() return false end,
          SetFunc = function(_, v)
              if v then pcall(SA_ResetConfig) end
              return true
          end },
    }

    local espStack = {
        { Key = "SA_Esp_Enable", UI = AliasMap.Switcher, Text = "ESP ENABLE",
          GetFunc = SA_MenuBool("ESP"), SetFunc = SA_MenuToggle("ESP") },
        { Key = "SA_Esp_Glow", UI = AliasMap.Switcher, Text = "ENEMY GLOW / CHAMS",
          GetFunc = SA_MenuBool("ESPGlow"), SetFunc = SA_MenuToggle("ESPGlow") },
        { Key = "SA_Esp_Box", UI = AliasMap.Switcher, Text = "ENEMY BOX FRAME",
          GetFunc = SA_MenuBool("ESPBox"), SetFunc = SA_MenuToggle("ESPBox") },
        { Key = "SA_Esp_HP", UI = AliasMap.Switcher, Text = "HEALTH BAR",
          GetFunc = SA_MenuBool("ESPHealth"), SetFunc = SA_MenuToggle("ESPHealth") },
        { Key = "SA_Esp_Dist", UI = AliasMap.Switcher, Text = "DISTANCE MARKER",
          GetFunc = SA_MenuBool("ESPDistance"), SetFunc = SA_MenuToggle("ESPDistance") },
        { Key = "SA_Esp_Max", UI = AliasMap.Slider, Text = "MAX DISTANCE 100-800M", MinValue = 100, MaxValue = 800, min = 100, max = 800,
          GetFunc = function() return math.floor(SA_CFG.ESPMaxDistance + 0.5) end, SetFunc = SA_MenuNumber("ESPMaxDistance", 100, 800) },
    }

    local displayStack = {
        { Key = "SA_Display_FPS", UI = AliasMap.Switcher, Text = "UNLOCK 120 FPS",
          GetFunc = SA_MenuBool("FPS120"), SetFunc = SA_MenuToggle("FPS120") },
        { Key = "SA_Display_IPad", UI = AliasMap.TitleSwitcher, Text = "CUSTOM IPAD VIEW", ExpandIndex = 0,
          GetFunc = SA_MenuBool("IPadView"), SetFunc = SA_MenuToggle("IPadView") },
        { Key = "SA_Display_IPadFOV", UI = AliasMap.Slider, Text = "  IPAD FOV 90-120", ExpandHandle = "SA_Display_IPad", MinValue = 90, MaxValue = 120, min = 90, max = 120,
          GetFunc = function() return math.floor(SA_CFG.IPadFOV + 0.5) end, SetFunc = SA_MenuNumber("IPadFOV", 90, 120) },
    }

    local bypassStack = {
        { Key = "SA_Bypass_Status", UI = AliasMap.Switcher, Text = "STEALTH BYPASS ACTIVE",
          GetFunc = function() return SA_CFG.Bypass == true end, SetFunc = function(_, v) return true end },
        { Key = "SA_Bypass_Info", UI = AliasMap.Switcher, Text = "LOCAL ANTI-REPORT + SAFE SCAN LAYER",
          GetFunc = function() return true end, SetFunc = function(_, v) return true end },
    }

    return {
        Key = "SAMenu",
        Text = "SAFE MOD",
        UIKey = "Setting_Page_Privacy",
        Category = {
            { Key = "SA_Cat_Aim", Text = "AIMBOT", Stack = aimStack },
            { Key = "SA_Cat_ESP", Text = "ESP", Stack = espStack },
            { Key = "SA_Cat_Display", Text = "DISPLAY / FPS", Stack = displayStack },
            { Key = "SA_Cat_Bypass", Text = "STEALTH BYPASS", Stack = bypassStack },
        }
    }
end

local function SA_IsSettingUI(x)
    if type(x) == "string" then
        return string.find(string.lower(x), "setting", 1, true) ~= nil
    end
    if type(x) == "table" then
        local k = x.keyName or x.key or x.Key or x.uiKey or x.UIKey
        if type(k) == "string" then
            return string.find(string.lower(k), "setting", 1, true) ~= nil
        end
    end
    return false
end

function _G.SA_InitMenu()
    if SA_Expired then return false end
    if SA_State.MenuReady then return true end

    local ok = pcall(function()
        local LocUtil = _G.LocUtil
        if not LocUtil then
            pcall(function() LocUtil = require("client.common.LocUtil") end)
        end
        if LocUtil and not LocUtil._SAMenuHooked then
            local oldGet = LocUtil.GetLocalizeResStr
            if type(oldGet) == "function" then
                LocUtil.GetLocalizeResStr = function(id, ...)
                    if type(id) == "string" and not tonumber(id) then return id end
                    return oldGet(id, ...)
                end
            end
            LocUtil._SAMenuHooked = true
        end

        local SettingPageDefine = require("client.logic.NewSetting.SettingPageDefine")
        local SettingCatalog = require("client.logic.NewSetting.SettingCatalog")
        local AliasMap = require("client.slua.umg.NewSetting.Item.AliasMap")

        local hasPage = false
        if SettingPageDefine.SAMenu then
            for i = 1, #SettingCatalog do
                local p = SettingCatalog[i]
                if type(p) == "table" and (p.Key == "SAMenu" or p.Key == "SAFE_MOD") then hasPage = true end
            end
        end

        if not SettingPageDefine.SAMenu then
            SettingPageDefine.SAMenu = SA_BuildMenuPage(AliasMap)
        end

        if not hasPage then
            table.insert(SettingCatalog, SettingPageDefine.SAMenu)
        end

        local UIManager = _G.UIManager
        if UIManager then
            if not UIManager._SAMenuHooked then
                local oldShow = UIManager.ShowUI
                if type(oldShow) == "function" then
                    UIManager.ShowUI = function(config, ...)
                        local args = { ... }
                        local n = select("#", ...)
                        if SA_IsSettingUI(config) then
                            -- Reload saved values and rebuild the page before the UI
                            -- reads GetFunc, so reopening can never show stale widgets.
                            pcall(SA_LoadConfig)
                            pcall(function()
                                local SPD = require("client.logic.NewSetting.SettingPageDefine")
                                local CAT = require("client.logic.NewSetting.SettingCatalog")
                                local AM = require("client.slua.umg.NewSetting.Item.AliasMap")
                                local fresh = SA_BuildMenuPage(AM)
                                SPD.SAMenu = fresh

                                local function replaceIn(list)
                                    if type(list) ~= "table" then return false end
                                    local found = false
                                    for i = 1, #list do
                                        local p = list[i]
                                        if type(p) == "table" and (p.Key == "SAMenu" or p.Key == "SAFE_MOD") then
                                            list[i] = fresh
                                            found = true
                                        end
                                    end
                                    return found
                                end

                                if not replaceIn(CAT) then table.insert(CAT, fresh) end
                                if type(args[1]) == "table" and not replaceIn(args[1]) then
                                    table.insert(args[1], fresh)
                                end
                            end)
                        end
                        local unpackFn = table.unpack or unpack
                        return oldShow(config, unpackFn(args, 1, n))
                    end
                end
                UIManager._SAMenuHooked = true
            end

            if not UIManager._SAMenuCloseHooked then
                local function wrapClose(name)
                    local old = UIManager[name]
                    if type(old) ~= "function" then return end
                    UIManager[name] = function(...)
                        if SA_IsSettingUI(select(1, ...)) then
                            pcall(SA_SaveConfig, true)
                        end
                        return old(...)
                    end
                end
                wrapClose("CloseUI")
                wrapClose("HideUI")
                wrapClose("RemoveUI")
                wrapClose("DestroyUI")
                UIManager._SAMenuCloseHooked = true
            end
        end

        return true
    end)

    if ok then
        SA_State.MenuReady = true
    end
    return SA_State.MenuReady
end

-- ============================================================================
-- LOOPS
-- ============================================================================

local function SA_MainOnce()
    if SA_Expired then return end
    local now = os.clock()

    pcall(SA_ApplyDisplay)
    pcall(SA_UpdateESP)
    pcall(SA_ApplyBypass)

    if not SA_State.MenuReady and (now - (SA_State.LastMenuTry or 0)) > 2.0 then
        SA_State.LastMenuTry = now
        pcall(_G.SA_InitMenu)
    end

    if SA_State.Dirty and (now - (SA_State.LastSave or 0)) > 5.0 then
        pcall(SA_SaveConfig)
    end
end

local function SA_StartLoops()
    if SA_Expired then return false end
    local ok, ticker = pcall(require, "common.time_ticker")
    if not ok or not ticker or type(ticker.AddTimerOnce) ~= "function" then
        return false
    end

    _G.SALoopToken = (_G.SALoopToken or 0) + 1
    local token = _G.SALoopToken

    local function mainLoop()
        if _G.SALoopToken ~= token then return end
        pcall(SA_MainOnce)
        pcall(function() ticker.AddTimerOnce(0.12, mainLoop) end)
    end

    local function aimLoop()
        if _G.SALoopToken ~= token then return end
        pcall(SA_AimOnce)
        pcall(function() ticker.AddTimerOnce(0.02, aimLoop) end)
    end

    pcall(function() ticker.AddTimerOnce(0.2, mainLoop) end)
    pcall(function() ticker.AddTimerOnce(0.5, aimLoop) end)
    return true
end

if SA_Expired then
    pcall(function()
        local ok, ticker = pcall(require, "common.time_ticker")
        if ok and ticker and type(ticker.AddTimerOnce) == "function" then
            ticker.AddTimerOnce(3.0, SA_ShowExpiredPopup)
        else
            SA_ShowExpiredPopup()
        end
    end)
else
    -- Load saved settings only once per runtime/session to avoid reverting unsaved changes on reload.
    if not _G.SAConfigLoadedFromDisk then
        SA_LoadConfig()
        _G.SAConfigLoadedFromDisk = true
    end

    pcall(function()
        if _G.SALoopsStarted then return end
        if SA_StartLoops() then
            _G.SALoopsStarted = true
            local ok, ticker = pcall(require, "common.time_ticker")
            if ok and ticker and type(ticker.AddTimerOnce) == "function" then
                pcall(function()
                    ticker.AddTimerOnce(6.0, function()
                        pcall(SA_ShowWelcomePopup)
                    end)
                end)
            end
        else
            local ok, ticker = pcall(require, "common.time_ticker")
            if ok and ticker and type(ticker.AddTimerOnce) == "function" then
                pcall(function() ticker.AddTimerOnce(6.0, SA_ShowWelcomePopup) end)
            else
                pcall(SA_ShowWelcomePopup)
            end
        end
    end)
end

local class = require("class")
local CCharacterBase = require("GameLua.GameCore.Framework.CharacterBase")
local CBRPlayerCharacterBase = class(CCharacterBase, nil, BRPlayerCharacterBase)
return require("combine_class").DeclareFeature(CBRPlayerCharacterBase, {
  {
    SkyTransition = "GameLua.Mod.BaseMod.Gameplay.Feature.SkyControl.PlayerCharacterSkyTransitionFeature"
  },
  {
    CarryDeadBoxFeature = "GameLua.Mod.Library.GamePlay.Feature.CarryDeadBoxFeature"
  },
  {
    SpecialSuitFeature = "GameLua.Mod.Library.GamePlay.Feature.SpecialSuitFeature"
  },
  {
    TeleportPawnFeature = "GameLua.Mod.Library.GamePlay.Feature.TeleportPawnFeature"
  },
  {
    LifterControl = "GameLua.Mod.BaseMod.Gameplay.Feature.Player.CharacterLifterControlFeature"
  },
  {
    FinalKillEffect = "GameLua.Mod.BaseMod.Gameplay.Feature.Player.PlayerCharacterFinalKillEffectFeature"
  },
  {
    CampFeature = "GameLua.Mod.BaseMod.GamePlay.Feature.Camp.PlayerCharacterCampFeature"
  },
  {
    BuildSkateFeature = "GameLua.Mod.BaseMod.GamePlay.Feature.PlayerCharacterBuildVehicleFeature"
  },
  {
    CommonBornlandTransformFeature = "GameLua.Mod.BaseMod.GamePlay.Feature.HeroPropFeature.CommonBornlandTransformFeature"
  },
  {
    ParachuteFormation = "GameLua.Mod.BaseMod.GamePlay.Feature.ParachuteFormationFeature"
  }
}, "BRPlayerCharacterBase")

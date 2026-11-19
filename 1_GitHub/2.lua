-- ============================================================

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
-- SILENT BULLET TRACK - @SohailPG1
-- Crosshair / camera bilkul nahi hilti. Game ke apne auto-aim fields use karke
-- bullet enemy ke head bone ki taraf bias hoti hai. Koi SetControlRotation nahi.
-- ============================================================================

local _prevOff = rawget(_G, "BulletTrackOff")
if type(_prevOff) == "function" then pcall(_prevOff) end
local _prevBypassOff = rawget(_G, "BulletTrackBypassOff")
if type(_prevBypassOff) == "function" then pcall(_prevBypassOff) end

local BT_State = {
    LastTick     = 0,
    LastSave     = 0,
    LastMenuTry  = 0,
    LastEnemy    = 0,
    Dirty        = false,
    MenuReady    = false,
    Enemies      = {},
    EnemyOwner   = nil,
}
_G.BTState = BT_State

local BT_CFG = _G.BTConfig or {}
_G.BTConfig = BT_CFG

local BT_DEFAULTS = {
    Enable   = true,
    Bypass   = true, -- client-side report/verify noise shield
    Power    = 60,   -- 10..100 bullet bias strength
    Hip      = 40,   -- 10..40 metres, hipfire
    Scope    = 150,  -- 30..180 metres, ADS
    IgKnock  = true,
    IgBot    = true,
}

for k, v in pairs(BT_DEFAULTS) do
    if BT_CFG[k] == nil then BT_CFG[k] = v end
end

local function BT_Clamp(v, lo, hi, def)
    v = tonumber(v) or def
    if v < lo then return lo end
    if v > hi then return hi end
    return v
end

local function BT_ClampConfig()
    BT_CFG.Power = BT_Clamp(BT_CFG.Power, 10, 100, 60)
    BT_CFG.Hip   = BT_Clamp(BT_CFG.Hip, 10, 40, 40)
    BT_CFG.Scope = BT_Clamp(BT_CFG.Scope, 30, 180, 150)
end
BT_ClampConfig()

-- ---------------------------------------------------------------------------
-- Persistent settings (multi-path + timestamp, newest config wins)
-- ---------------------------------------------------------------------------

local function BT_GetConfigCandidates()
    local list = {}
    local seen = {}
    local function addDir(base)
        if type(base) ~= "string" or base == "" then return end
        local p = base:gsub("/+$", "") .. "/SohailPG1_bullet.cfg"
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

    pcall(function()
        local pkg = tostring(packageName or "")
        local roots = {}
        if pkg ~= "" then
            roots[#roots + 1] = "/storage/emulated/0/Android/data/" .. pkg .. "/files"
            roots[#roots + 1] = "/sdcard/Android/data/" .. pkg .. "/files"
        end
        for i = 1, #roots do
            local root = roots[i]:gsub("/+$", "")
            local ue = root .. "/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved"
            addDir(ue .. "/Paks")
            addDir(ue .. "/SaveGames")
        end
        addDir("/storage/emulated/0/Documents/ShadowTrackerExtra/Saved/Paks")
        addDir("/Documents/ShadowTrackerExtra/Saved/Paks")
        addDir("ShadowTrackerExtra/Saved/Paks")
        addDir("../../ShadowTrackerExtra/Saved/Paks")
    end)

    addDir("/storage/emulated/0")
    addDir("/sdcard")
    addDir(".")
    return list
end

local BT_ConfigPath = _G.BTConfigPath
local BT_LastSaveStamp = 0

local function BT_ReadConfigFile(path)
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
            elseif k and BT_DEFAULTS[k] ~= nil then
                if type(BT_DEFAULTS[k]) == "boolean" then
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

local function BT_LoadConfig()
    local candidates = BT_GetConfigCandidates()
    if BT_ConfigPath then
        local found = false
        for i = 1, #candidates do
            if candidates[i] == BT_ConfigPath then found = true break end
        end
        if not found then table.insert(candidates, 1, BT_ConfigPath) end
    end

    local bestValues, bestPath
    local bestStamp, bestCount, bestScore = 0, 0, -1
    for i = 1, #candidates do
        local path = candidates[i]
        local values, stamp, count = BT_ReadConfigFile(path)
        if values then
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
        for k, v in pairs(bestValues) do BT_CFG[k] = v end
        BT_ConfigPath = bestPath
        BT_LastSaveStamp = bestStamp
        _G.BTConfigPath = bestPath
        _G.BTConfigSavedAt = bestStamp
    end
    BT_ClampConfig()
end

local function BT_WriteConfigTo(path, stamp)
    local ok, f = pcall(io.open, path, "w")
    if not ok or not f then return false end
    local wrote = false
    local okWrite = pcall(function()
        f:write("SavedAt=" .. tostring(stamp) .. "\n")
        for k, def in pairs(BT_DEFAULTS) do
            local v = BT_CFG[k]
            if type(def) == "boolean" then v = v and "1" or "0" end
            f:write(k .. "=" .. tostring(v) .. "\n")
        end
        f:close()
        wrote = true
    end)
    if not okWrite then pcall(function() f:close() end) end
    return wrote
end

local function BT_SaveConfig(force)
    if not force and not BT_State.Dirty then return end
    local stamp = (os.time and os.time()) or 0
    if stamp <= BT_LastSaveStamp then stamp = BT_LastSaveStamp + 1 end
    BT_LastSaveStamp = stamp

    local candidates = BT_GetConfigCandidates()
    if BT_ConfigPath then
        local found = false
        for i = 1, #candidates do
            if candidates[i] == BT_ConfigPath then found = true break end
        end
        if not found then table.insert(candidates, 1, BT_ConfigPath) end
    end

    local firstSaved = nil
    for i = 1, #candidates do
        if BT_WriteConfigTo(candidates[i], stamp) and not firstSaved then
            firstSaved = candidates[i]
        end
    end

    if firstSaved then
        BT_ConfigPath = firstSaved
        BT_State.Dirty = false
        BT_State.LastSave = os.clock()
        _G.BTConfigPath = firstSaved
        _G.BTConfigSavedAt = stamp
        return true
    end
    return false
end

local function BT_MarkDirty()
    BT_State.Dirty = true
end

local function BT_Notify(msg)
    pcall(function()
        if type(Notify) == "function" then Notify("[BULLET TRACK] " .. tostring(msg)) end
    end)
end

-- ---------------------------------------------------------------------------
-- Runtime helpers
-- ---------------------------------------------------------------------------

local function BT_Valid(obj)
    if not obj then return false end
    local sl = rawget(_G, "slua")
    if sl and type(sl.isValid) == "function" then
        local ok, v = pcall(sl.isValid, obj)
        return ok and v and true or false
    end
    return true
end

local function BT_Key(actor)
    if not actor then return "nil" end
    local k = nil
    pcall(function()
        if actor.PlayerKey then k = tostring(actor.PlayerKey) end
        if not k and type(actor.GetUniqueID) == "function" then k = tostring(actor:GetUniqueID()) end
    end)
    return k or tostring(actor)
end

local function BT_GetWeapon(player)
    local weapon = nil
    pcall(function()
        if type(player.GetCurrentWeapon) == "function" then weapon = player:GetCurrentWeapon() end
    end)
    if not BT_Valid(weapon) then
        local wm = player.WeaponManagerComponent
        weapon = wm and wm.CurrentWeaponReplicated
    end
    if not BT_Valid(weapon) and type(player.GetCurrentShootWeapon) == "function" then
        weapon = player:GetCurrentShootWeapon()
    end
    return weapon
end

local function BT_WeaponID(weapon)
    local wid = 0
    pcall(function()
        if type(weapon.GetWeaponID) == "function" then wid = tonumber(weapon:GetWeaponID()) or 0 end
    end)
    if wid == 0 then
        pcall(function()
            if type(weapon.GetItemDefineID) == "function" then
                local def = weapon:GetItemDefineID()
                if def then wid = tonumber(def.TypeSpecificID) or 0 end
            end
        end)
    end
    return wid
end

local function BT_IsGunWeapon(weapon)
    if not BT_Valid(weapon) then return false end
    local wid = BT_WeaponID(weapon)
    -- grenades / melee / unknown items skip
    if wid >= 602000 and wid < 603000 then return false end
    if wid > 0 and (wid < 100000 or wid >= 200000) then return false end
    return true
end

local function BT_GetEntity(weapon)
    local entity = nil
    if not BT_Valid(weapon) then return nil end
    local fields = {
        "ShootWeaponEntityComp", "ShootWeaponEntityComponent",
        "ShootWeaponComponent", "STExtraShootWeaponComponent",
    }
    for i = 1, #fields do
        if not BT_Valid(entity) then
            local ok, v = pcall(function() return weapon[fields[i]] end)
            if ok and BT_Valid(v) then entity = v end
        end
    end
    if not BT_Valid(entity) then
        local methods = { "GetShootWeaponComponent", "GetShootWeaponEntityComponent" }
        for i = 1, #methods do
            if not BT_Valid(entity) and type(weapon[methods[i]]) == "function" then
                local ok, v = pcall(weapon[methods[i]], weapon)
                if ok and BT_Valid(v) then entity = v end
            end
        end
    end
    return entity
end

local function BT_IsBot(ch)
    local bot = false
    pcall(function()
        if ch.bIsAI == true or ch.IsAI == true then bot = true end
        if type(ch.IsBot) == "function" and ch:IsBot() then bot = true end
        local ps = ch.PlayerState
        if not BT_Valid(ps) and type(ch.GetPlayerState) == "function" then ps = ch:GetPlayerState() end
        if BT_Valid(ps) then
            if ps.bIsABot == true or ps.bIsBot == true then bot = true end
            if type(ps.IsBot) == "function" and ps:IsBot() then bot = true end
        end
    end)
    return bot
end

local function BT_IsKnocked(ch)
    local knocked = false
    pcall(function()
        if ch.bIsDying == true or ch.bIsKnocked == true then knocked = true end
        if ch.HealthStatus ~= nil and tonumber(ch.HealthStatus) == 1 then knocked = true end
        if type(ch.IsDying) == "function" and ch:IsDying() then knocked = true end
    end)
    return knocked
end

local function BT_AppendArray(dst, seen, arr)
    if arr == nil then return end
    local function add(v)
        if BT_Valid(v) then
            local k = BT_Key(v)
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

local function BT_RefreshEnemies()
    local now = os.clock()
    local player = nil
    pcall(function()
        if GameplayData and GameplayData.GetPlayerCharacter then player = GameplayData.GetPlayerCharacter() end
    end)
    if not BT_Valid(player) then
        BT_State.Enemies = {}
        BT_State.EnemyOwner = nil
        BT_State.LastEnemy = now
        return {}, nil
    end

    if BT_State.EnemyOwner == player and (now - BT_State.LastEnemy) < 0.30 then
        return BT_State.Enemies, player
    end

    local list = {}
    local seen = { [BT_Key(player)] = true }
    pcall(function()
        if GameplayData then
            if GameplayData.GetAllPlayerCharacters then
                BT_AppendArray(list, seen, GameplayData.GetAllPlayerCharacters())
            end
            if #list == 0 and GameplayData.GameCharacters then
                BT_AppendArray(list, seen, GameplayData.GameCharacters)
            end
        end
        if #list == 0 and Game and type(Game.GetAllPlayerPawns) == "function" then
            BT_AppendArray(list, seen, Game:GetAllPlayerPawns())
        end
    end)

    BT_State.Enemies = list
    BT_State.EnemyOwner = player
    BT_State.LastEnemy = now
    return list, player
end

-- ---------------------------------------------------------------------------
-- ANTI-REPORT SHIELD (client-side, conservative)
-- Sirf local report / shoot-verify noise rokta hai. Server-side detection
-- Lua se block nahi hoti — ye "full bypass" nahi, ek chhoti shield hai.
-- ---------------------------------------------------------------------------

local BP = _G.BTBypassRT or { applied = false, saved = {} }
_G.BTBypassRT = BP
BP.saved = BP.saved or {}
BP.applied = false

local function BP_Nop() end
local function BP_True() return true end

local function BP_Save(tbl, key)
    if type(tbl) ~= "table" then return nil, false end
    local ok, v = pcall(function() return tbl[key] end)
    return v, ok and v ~= nil
end

local function BP_Set(tbl, key, value)
    local old, had = BP_Save(tbl, key)
    if had then BP.saved[#BP.saved + 1] = { tbl = tbl, key = key, val = old, had = true } end
    pcall(function() tbl[key] = value end)
end

local function BP_SetFuncs(tbl, names, value)
    if type(tbl) ~= "table" then return end
    for i = 1, #names do
        local old, had = BP_Save(tbl, names[i])
        if had and type(old) == "function" then
            BP.saved[#BP.saved + 1] = { tbl = tbl, key = names[i], val = old, had = true }
            pcall(function() tbl[names[i]] = value end)
        end
    end
end

_G.BulletTrackBypassOff = function()
    local rt = _G.BTBypassRT
    if not rt then return end
    for i = #rt.saved, 1, -1 do
        local e = rt.saved[i]
        pcall(function()
            if e.had then e.tbl[e.key] = e.val else e.tbl[e.key] = nil end
        end)
        rt.saved[i] = nil
    end
    rt.applied = false
end

local BP_BlockedPackets = {
    ReportAimFlow = 1, ReportHitFlow = 1, ReportFireArms = 1,
    ReportVerifyInfoFlow = 1, ReportAttackFlow = 1, ReportSecAttackFlow = 1,
    ShootVerifyFailed = 1, BulletHitInfoUploadData = 1,
    tss_sdk_report = 1, report_unrealnet_exception = 1,
    SwiftHawk = 1, ClientSwiftHawk = 1, ClientSwiftHawkWithParams = 1,
    ClientSecMrpcsFlow = 1, ReportPlayerBehavior = 1,
    AntiCheatReport = 1, CheatDetection = 1,
}

local BP_BlockedRPC = {
    RPC_Server_SwiftHawk = 1,
    RPC_Server_ClientSwiftHawkWithParams = 1,
    RPC_Server_ReportSimulateCharacterLocation = 1,
    RPC_Client_ShootVertifyRes = 1,
}

local function BP_Apply()
    if BP.applied then return end

    -- SwiftHawk telemetry
    local swift = { "SwiftHawk", "ClientSwiftHawk", "ClientSwiftHawkWithParams", "SendSwiftHawkData" }
    for i = 1, #swift do
        BP_Set(_G, swift[i], BP_Nop)
        if type(_G.GameplayCallbacks) == "table" then
            BP_Set(_G.GameplayCallbacks, swift[i], BP_Nop)
        end
    end

    -- Shoot verification / bullet hit upload
    local okSub, sub = pcall(require, "GameLua.Dev.Subsystem.ShootVerifySubSystemClient")
    if okSub and type(sub) == "table" then
        BP_SetFuncs(sub, { "OnShootVerifyFailed", "SendVerifyData", "ReportBulletHit", "UploadHitInfo" }, BP_Nop)
        BP_SetFuncs(sub, { "VerifyShot" }, BP_True)
    end
    if type(_G.BulletHitInfoUploadData) == "table" then
        BP_SetFuncs(_G.BulletHitInfoUploadData, { "Report", "Send", "Upload" }, BP_Nop)
    end

    -- Gameplay report callbacks
    if type(_G.GameplayCallbacks) == "table" then
        BP_SetFuncs(_G.GameplayCallbacks, {
            "ReportAttackFlow", "ReportSecAttackFlow", "ReportFireArms",
            "ReportVerifyInfoFlow", "ReportMrpcsFlow", "ReportPlayerBehavior",
            "ReportAimFlow", "ReportHitFlow", "ReportCircleFlow",
            "SendTssSdkAntiDataToLobby", "SwiftHawk", "ClientSwiftHawk",
            "ClientSwiftHawkWithParams",
        }, BP_Nop)
    end

    -- Network packet filter (sirf upar wale names)
    if type(NetUtil) == "table" and type(NetUtil.SendPacket) == "function" then
        local orig = NetUtil.SendPacket
        BP.saved[#BP.saved + 1] = { tbl = NetUtil, key = "SendPacket", val = orig, had = true }
        NetUtil.SendPacket = function(name, ...)
            if BP_BlockedPackets[name] then return nil end
            return orig(name, ...)
        end
    end
    if type(_G.SendRPC) == "function" then
        local orig = _G.SendRPC
        BP.saved[#BP.saved + 1] = { tbl = _G, key = "SendRPC", val = orig, had = true }
        _G.SendRPC = function(name, ...)
            if BP_BlockedRPC[name] then return nil end
            return orig(name, ...)
        end
    end

    BP.applied = true
end

-- ---------------------------------------------------------------------------
-- Native bullet-bias state (crosshair untouched)
-- ---------------------------------------------------------------------------

local BT_RT = _G.BTBulletRT or {}
_G.BTBulletRT = BT_RT
BT_RT.forbid = BT_RT.forbid or {}
BT_RT.weapons = BT_RT.weapons or {}
BT_RT.nextApply = BT_RT.nextApply or 0
BT_RT.nextFilter = BT_RT.nextFilter or 0

local function BT_SaveFields(obj, keys)
    local saved = {}
    if not BT_Valid(obj) then return saved end
    for i = 1, #keys do
        local ok, v = pcall(function() return obj[keys[i]] end)
        if ok then saved[keys[i]] = v end
    end
    return saved
end

local function BT_RestoreFields(obj, saved)
    if not BT_Valid(obj) or not saved then return end
    for k, v in pairs(saved) do
        pcall(function() obj[k] = v end)
    end
end

local function BT_RestoreWithFallback(obj, saved, fallback)
    if not BT_Valid(obj) then return end
    if saved then
        for k, v in pairs(saved) do
            pcall(function() obj[k] = v end)
        end
    end
    if fallback then
        for k, v in pairs(fallback) do
            if not saved or saved[k] == nil then
                pcall(function() obj[k] = v end)
            end
        end
    end
end

local function BT_Write(obj, field, value)
    if not BT_Valid(obj) then return end
    pcall(function() obj[field] = value end)
end

_G.BulletTrackOff = function()
    local rt = _G.BTBulletRT
    if not rt then return end

    pcall(function()
        -- 1) enemy forbid restore
        for _, st in pairs(rt.forbid or {}) do
            if st and BT_Valid(st.pawn) then
                local restore = st.orig
                if restore == nil then restore = false end
                pcall(function() st.pawn.bForbidAutoAimAt = restore end)
            end
        end
        rt.forbid = {}

        -- 2) weapon AutoAimingConfig restore
        for entity, saved in pairs(rt.weapons or {}) do
            if BT_Valid(entity) and entity.AutoAimingConfig then
                for name, fields in pairs(saved.ranges or {}) do
                    local cfg = entity.AutoAimingConfig[name]
                    if cfg then
                        for k, v in pairs(fields) do
                            pcall(function() cfg[k] = v end)
                        end
                    end
                end
                if saved.bones ~= nil then
                    pcall(function() entity.AutoAimingConfig.Bones = saved.bones end)
                end
                if saved.maxAngle ~= nil then
                    pcall(function() entity.AutoAimingConfig.MaxAngle = saved.maxAngle end)
                end
                if saved.onlyHead ~= nil then
                    pcall(function() entity.AutoAimingConfig.bOnlyHitHead = saved.onlyHead end)
                end
            end
        end
        rt.weapons = {}

        -- 3) AutoAimComp restore (bones pehle, phir fields)
        local aac = rt.aac
        if BT_Valid(aac) then
            if rt.bonesRef ~= nil then
                pcall(function()
                    local b = rt.bonesRef
                    if rt.bonesMutated and b and b.Clear and b.Add and rt.bonesList and #rt.bonesList > 0 then
                        b:Clear()
                        for _, bone in ipairs(rt.bonesList) do b:Add(bone) end
                    end
                    aac.Bones = b
                end)
            end
            if BT_Valid(aac.AimAssistConfig) and rt.assistState then
                BT_RestoreFields(aac.AimAssistConfig, rt.assistState)
            end
            BT_RestoreWithFallback(aac, rt.aacState, {
                bEnableAutoAim = false, bAutoAim = false,
                bModifyCrossHair = false, bOnlyHitHead = false,
            })
        end

        -- 4) Character + controller restore
        if BT_Valid(rt.char) then
            BT_RestoreWithFallback(rt.char, rt.charState, {
                bEnableAutoAim = false, bAutoAim = false, ActiveAimScopeRange = false,
            })
        end
        if BT_Valid(rt.pc) then
            BT_RestoreWithFallback(rt.pc, rt.pcState, {
                bAutoAimAt = false, bEnableAutoAim = false,
            })
        end
    end)

    rt.active = false
    rt.pc, rt.char, rt.aac = nil, nil, nil
    rt.pcState, rt.charState, rt.aacState, rt.assistState = nil, nil, nil, nil
    rt.bonesRef, rt.bonesList = nil, nil
    rt.bonesAssigned, rt.bonesMutated = nil, nil
    rt.nextApply, rt.nextFilter = 0, 0
end

local function BT_CaptureAAC(rt, char)
    local aac = nil
    pcall(function() aac = char.AutoAimComp end)
    if not BT_Valid(aac) then
        pcall(function() aac = char.BP_AutoAimingComponent end)
    end
    rt.aac = aac
    rt.bonesAssigned, rt.bonesMutated = false, false
    rt.aacState, rt.assistState, rt.bonesRef, rt.bonesList = nil, nil, nil, nil

    if BT_Valid(aac) then
        rt.aacState = BT_SaveFields(aac, {
            "AutoAimType", "bEnableAutoAim", "bAutoAim", "bModifyCrossHair",
            "bOnlyHitHead", "HeadBoneName", "ChestBoneName", "PelvisBoneName",
            "AimTargetSocket", "AimSocketName",
        })
        pcall(function() rt.bonesRef = aac.Bones end)
        rt.bonesList = {}
        pcall(function()
            local b = aac.Bones
            if b and type(b.Num) == "function" and type(b.Get) == "function" then
                for i = 0, b:Num() - 1 do
                    local bone = b:Get(i)
                    if bone then rt.bonesList[#rt.bonesList + 1] = bone end
                end
            end
        end)
        pcall(function()
            rt.assistState = BT_SaveFields(aac.AimAssistConfig, {
                "HeadPriority", "ChestPriority", "PelvisPriority",
            })
        end)
    end
end

local function BT_ApplyPlayerState(pc, char)
    local rt = BT_RT

    if rt.char ~= char or rt.pc ~= pc then
        if rt.active then _G.BulletTrackOff() end
        rt.pc, rt.char = pc, char
        rt.pcState = BT_SaveFields(pc, { "AutoAimType", "bAutoAimAt", "bEnableAutoAim" })
        rt.charState = BT_SaveFields(char, {
            "bEnableAutoAim", "bAutoAim", "ActiveAimScopeRange",
            "AimTargetSocket", "AimSocketName",
        })
        BT_CaptureAAC(rt, char)
        rt.active = true
    elseif not BT_Valid(rt.aac) then
        BT_CaptureAAC(rt, char)
    end

    -- Controller: native client aim path (bullet bias, no camera rotation)
    pcall(function()
        pc.AutoAimType = 1
        pc.bAutoAimAt = true
        pc.bEnableAutoAim = true
    end)

    -- Character: head socket, crosshair untouched
    pcall(function()
        char.bEnableAutoAim = true
        char.bAutoAim = true
        char.ActiveAimScopeRange = true
        char.AimTargetSocket = "head"
        char.AimSocketName = "head"
    end)

    local aac = rt.aac
    if BT_Valid(aac) then
        pcall(function()
            aac.AutoAimType = 1
            aac.bEnableAutoAim = true
            aac.bAutoAim = true
            aac.bModifyCrossHair = false   -- crosshair moves nahi
            aac.bOnlyHitHead = true
            aac.HeadBoneName = "Head"
            aac.ChestBoneName = "Head"
            aac.PelvisBoneName = "Head"
            if aac.AimAssistConfig then
                aac.AimAssistConfig.HeadPriority = 100
                aac.AimAssistConfig.ChestPriority = 1
                aac.AimAssistConfig.PelvisPriority = 1
            end
        end)

        -- Head bones: native array warna manual
        local assigned = false
        pcall(function()
            if char.AimHeadBoneArray then
                aac.Bones = char.AimHeadBoneArray
                assigned = true
            end
        end)
        if assigned then
            rt.bonesAssigned = true
        else
            pcall(function()
                local b = aac.Bones
                if b and type(b.Clear) == "function" and type(b.Add) == "function" then
                    b:Clear()
                    b:Add("neck_01")
                    b:Add("head")
                    rt.bonesMutated = true
                end
            end)
        end
    end
end

local function BT_ApplyWeapon(entity, power, hipDist, scopeDist, ignoreKnock)
    if not BT_Valid(entity) or not entity.AutoAimingConfig then return false end
    local cfg = entity.AutoAimingConfig
    local rt = BT_RT

    local saved = rt.weapons[entity]
    if not saved then
        saved = { ranges = {}, bones = nil, maxAngle = nil, onlyHead = nil }
        local fields = {
            "Speed", "RangeRate", "SpeedRate", "RangeRateSight", "SpeedRateSight",
            "CenterSpeedRate", "CrouchRate", "ProneRate", "DyingRate",
            "AdsorbActiveMinRange", "AdsorbMinAttenuationDis", "AdsorbMaxAttenuationDis",
            "AdsorbMaxRange", "adsorbMaxAttenuationDis", "adsorbMaxRange",
        }
        local names = { "OuterRange", "InnerRange", "ScopeRange" }
        for i = 1, #names do
            local rangeCfg = cfg[names[i]]
            if BT_Valid(rangeCfg) then
                saved.ranges[names[i]] = BT_SaveFields(rangeCfg, fields)
            end
        end
        local okB, b = pcall(function() return cfg.Bones end)
        if okB then saved.bones = b end
        local okMA, ma = pcall(function() return cfg.MaxAngle end)
        if okMA then saved.maxAngle = ma end
        local okOH, oh = pcall(function() return cfg.bOnlyHitHead end)
        if okOH then saved.onlyHead = oh end
        rt.weapons[entity] = saved
    end

    local ratio = power / 100.0
    local speed = 7.0 + ratio * 5.0
    local rangeRate = 2.0 + ratio * 1.6
    local speedRate = 1.8 + ratio * 1.4
    local rangeSight = 2.0 + ratio * 1.6
    local speedSight = 1.6 + ratio * 1.2
    local center = 1.0 + ratio * 0.5
    local crouch = 1.1 + ratio * 0.4
    local prone = 1.05 + ratio * 0.35
    local dying = ignoreKnock and 0 or (1.0 + ratio * 0.5)
    local hipUnits = hipDist * 100.0
    local scopeUnits = scopeDist * 100.0
    -- Crosshair door ho to bhi bullet head tak jaye: yaw/pitch angle limit badhaya
    local maxAngle = 30.0 + ratio * 60.0

    pcall(function() cfg.Bones = { "Head", "Head", "Head" } end)
    pcall(function() cfg.MaxAngle = maxAngle end)
    pcall(function() cfg.bOnlyHitHead = true end)

    local outer = cfg.OuterRange
    if BT_Valid(outer) then
        BT_Write(outer, "Speed", speed)
        BT_Write(outer, "RangeRate", rangeRate)
        BT_Write(outer, "SpeedRate", speedRate)
        BT_Write(outer, "RangeRateSight", rangeSight)
        BT_Write(outer, "SpeedRateSight", speedSight)
        BT_Write(outer, "CenterSpeedRate", center)
        BT_Write(outer, "CrouchRate", crouch)
        BT_Write(outer, "ProneRate", prone)
        BT_Write(outer, "DyingRate", dying)
        BT_Write(outer, "AdsorbMaxAttenuationDis", hipUnits)
        BT_Write(outer, "adsorbMaxAttenuationDis", hipUnits)
    end

    local inner = cfg.InnerRange
    if BT_Valid(inner) then
        BT_Write(inner, "Speed", speed)
        BT_Write(inner, "RangeRate", rangeRate)
        BT_Write(inner, "SpeedRateSight", speedSight)
        BT_Write(inner, "RangeRateSight", rangeSight)
        BT_Write(inner, "SpeedRate", speedRate)
        BT_Write(inner, "CenterSpeedRate", center)
        BT_Write(inner, "ProneRate", prone)
        BT_Write(inner, "DyingRate", dying)
        BT_Write(inner, "AdsorbMaxAttenuationDis", hipUnits)
        BT_Write(inner, "adsorbMaxAttenuationDis", hipUnits)
    end

    local scope = cfg.ScopeRange
    if BT_Valid(scope) then
        BT_Write(scope, "RangeRate", 0)
        BT_Write(scope, "RangeRateSight", rangeSight)
        BT_Write(scope, "SpeedRate", 0)
        BT_Write(scope, "SpeedRateSight", speedSight)
        BT_Write(scope, "DyingRate", dying)
        BT_Write(scope, "AdsorbMaxRange", scopeUnits)
        BT_Write(scope, "adsorbMaxRange", scopeUnits)
        BT_Write(scope, "AdsorbMaxAttenuationDis", scopeUnits)
        BT_Write(scope, "adsorbMaxAttenuationDis", scopeUnits)
    end

    return true
end

local function BT_UpdateForbid(maxDist, ignoreKnock, ignoreBots)
    local enemies = BT_RefreshEnemies()
    local rt = BT_RT
    local seen = {}

    for i = 1, #enemies do
        local enemy = enemies[i]
        if BT_Valid(enemy) then
            local key = BT_Key(enemy)
            seen[key] = true
            local st = rt.forbid[key]
            if not st then
                local ok, orig = pcall(function() return enemy.bForbidAutoAimAt end)
                st = { pawn = enemy, orig = (ok and orig) or false, applied = false }
                rt.forbid[key] = st
            else
                st.pawn = enemy
            end

            local blocked = false
            if ignoreBots and BT_IsBot(enemy) then blocked = true end
            if not blocked and ignoreKnock and BT_IsKnocked(enemy) then blocked = true end

            if blocked then
                if st.applied ~= true then
                    pcall(function() enemy.bForbidAutoAimAt = true end)
                    st.applied = true
                end
            elseif st.applied == true then
                local restore = st.orig
                if restore == nil then restore = false end
                pcall(function() enemy.bForbidAutoAimAt = restore end)
                st.applied = false
            end
        end
    end

    for key, st in pairs(rt.forbid) do
        if not seen[key] then
            if st.applied == true and BT_Valid(st.pawn) then
                local restore = st.orig
                if restore == nil then restore = false end
                pcall(function() st.pawn.bForbidAutoAimAt = restore end)
            end
            rt.forbid[key] = nil
        end
    end
end

function _G.BulletTrackHeadTick()
    if not BT_CFG.Enable then
        if BT_RT.active then _G.BulletTrackOff() end
        pcall(_G.BulletTrackBypassOff)
        return false
    end
    if BT_CFG.Bypass then
        pcall(BP_Apply)
    else
        pcall(_G.BulletTrackBypassOff)
    end

    local ok, handled = pcall(function()
        local player = nil
        pcall(function()
            if GameplayData and GameplayData.GetPlayerCharacter then
                player = GameplayData.GetPlayerCharacter()
            end
        end)
        if not BT_Valid(player) then return false end

        local pc = nil
        pcall(function()
            if type(player.GetPlayerControllerSafety) == "function" then
                pc = player:GetPlayerControllerSafety()
            end
            if not BT_Valid(pc) and GameplayData and GameplayData.GetPlayerController then
                pc = GameplayData.GetPlayerController()
            end
        end)
        if not BT_Valid(pc) then return false end

        local weapon = BT_GetWeapon(player)
        if not BT_IsGunWeapon(weapon) then return false end
        local entity = BT_GetEntity(weapon)

        local power = BT_Clamp(BT_CFG.Power, 10, 100, 60)
        local hipDist = BT_Clamp(BT_CFG.Hip, 10, 40, 40)
        local scopeDist = BT_Clamp(BT_CFG.Scope, 30, 180, 150)
        local ignoreKnock = BT_CFG.IgKnock ~= false
        local ignoreBots = BT_CFG.IgBot ~= false

        local now = os.clock()
        if not BT_RT.active or now >= (BT_RT.nextApply or 0) then
            BT_ApplyPlayerState(pc, player)
            if BT_Valid(entity) then
                BT_ApplyWeapon(entity, power, hipDist, scopeDist, ignoreKnock)
            end
            BT_RT.nextApply = now + 0.5
        end

        if now >= (BT_RT.nextFilter or 0) then
            local isADS = false
            pcall(function()
                if type(player.IsGunADS) == "function" then isADS = player:IsGunADS() == true end
            end)
            if not isADS then pcall(function() isADS = player.bIsGunADS == true end) end
            BT_UpdateForbid(isADS and scopeDist or hipDist, ignoreKnock, ignoreBots)
            BT_RT.nextFilter = now + 0.25
        end

        return true
    end)
    return ok and handled == true
end

local function BT_Tick()
    if not BT_CFG.Enable then
        if BT_RT.active then _G.BulletTrackOff() end
        pcall(_G.BulletTrackBypassOff)
        return
    end
    local now = os.clock()
    if now - BT_State.LastTick < 0.02 then return end
    BT_State.LastTick = now
    pcall(_G.BulletTrackHeadTick)
end

-- ---------------------------------------------------------------------------
-- Native menu
-- ---------------------------------------------------------------------------

local function BT_MenuBool(key)
    return function() return BT_CFG[key] == true end
end

local function BT_MenuToggle(key)
    return function(_, v)
        local value = v and true or false
        if BT_CFG[key] == value then return true end
        BT_CFG[key] = value
        BT_MarkDirty()
        if not value then
            if key == "Enable" then pcall(_G.BulletTrackOff) end
            if key == "Enable" or key == "Bypass" then pcall(_G.BulletTrackBypassOff) end
        end
        pcall(BT_SaveConfig, true)
        return true
    end
end

local function BT_MenuNumber(key, minv, maxv)
    return function(_, v)
        local n = math.floor((tonumber(v) or minv) + 0.5)
        if n < minv then n = minv end
        if n > maxv then n = maxv end
        if BT_CFG[key] == n then return true end
        BT_CFG[key] = n
        BT_MarkDirty()
        pcall(BT_SaveConfig, true)
        return true
    end
end

local function BT_ResetConfig()
    pcall(_G.BulletTrackOff)
    pcall(_G.BulletTrackBypassOff)
    for k, v in pairs(BT_DEFAULTS) do BT_CFG[k] = v end
    BT_ClampConfig()
    BT_MarkDirty()
    pcall(BT_SaveConfig, true)
    BT_Notify("SETTINGS RESET TO DEFAULT")
end

local function BT_BuildMenuPage(AliasMap)
    local stack = {
        { Key = "BT_Enable", UI = AliasMap.TitleSwitcher, Text = "BULLET TRACK HEAD", ExpandIndex = 0,
          GetFunc = BT_MenuBool("Enable"), SetFunc = BT_MenuToggle("Enable") },
        { Key = "BT_Bypass", UI = AliasMap.Switcher, Text = "  ANTI-REPORT SHIELD", ExpandHandle = "BT_Enable",
          GetFunc = BT_MenuBool("Bypass"), SetFunc = BT_MenuToggle("Bypass") },
        { Key = "BT_Power", UI = AliasMap.Slider, Text = "  BULLET BIAS 10-100", ExpandHandle = "BT_Enable", MinValue = 10, MaxValue = 100, min = 10, max = 100,
          GetFunc = function() return math.floor(BT_CFG.Power + 0.5) end, SetFunc = BT_MenuNumber("Power", 10, 100) },
        { Key = "BT_Hip", UI = AliasMap.Slider, Text = "  HIP DISTANCE 10-40M", ExpandHandle = "BT_Enable", MinValue = 10, MaxValue = 40, min = 10, max = 40,
          GetFunc = function() return math.floor(BT_CFG.Hip + 0.5) end, SetFunc = BT_MenuNumber("Hip", 10, 40) },
        { Key = "BT_Scope", UI = AliasMap.Slider, Text = "  SCOPE DISTANCE 30-180M", ExpandHandle = "BT_Enable", MinValue = 30, MaxValue = 180, min = 30, max = 180,
          GetFunc = function() return math.floor(BT_CFG.Scope + 0.5) end, SetFunc = BT_MenuNumber("Scope", 30, 180) },
        { Key = "BT_Knock", UI = AliasMap.Switcher, Text = "  IGNORE KNOCKED", ExpandHandle = "BT_Enable",
          GetFunc = BT_MenuBool("IgKnock"), SetFunc = BT_MenuToggle("IgKnock") },
        { Key = "BT_Bot", UI = AliasMap.Switcher, Text = "  IGNORE BOTS", ExpandHandle = "BT_Enable",
          GetFunc = BT_MenuBool("IgBot"), SetFunc = BT_MenuToggle("IgBot") },
        { Key = "BT_Reset", UI = AliasMap.Switcher, Text = "RESET ALL VALUES TO DEFAULT",
          GetFunc = function() return false end,
          SetFunc = function(_, v) if v then pcall(BT_ResetConfig) end return true end },
    }

    return {
        Key = "BTMENU",
        Text = "BULLET TRACK",
        UIKey = "Setting_Page_Privacy",
        Category = {
            { Key = "BT_Cat_Main", Text = "BULLET TRACK", Stack = stack },
        }
    }
end

local function BT_IsSettingUI(x)
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

function _G.BT_InitMenu()
    if BT_State.MenuReady then return true end

    local ok = pcall(function()
        local LocUtil = _G.LocUtil
        if not LocUtil then pcall(function() LocUtil = require("client.common.LocUtil") end) end
        if LocUtil and not LocUtil._BTMenuHooked then
            local oldGet = LocUtil.GetLocalizeResStr
            if type(oldGet) == "function" then
                LocUtil.GetLocalizeResStr = function(id, ...)
                    if type(id) == "string" and not tonumber(id) then return id end
                    return oldGet(id, ...)
                end
            end
            LocUtil._BTMenuHooked = true
        end

        local SettingPageDefine = require("client.logic.NewSetting.SettingPageDefine")
        local SettingCatalog = require("client.logic.NewSetting.SettingCatalog")
        local AliasMap = require("client.slua.umg.NewSetting.Item.AliasMap")

        local hasPage = false
        if SettingPageDefine.BTMENU then
            for i = 1, #SettingCatalog do
                local p = SettingCatalog[i]
                if type(p) == "table" and (p.Key == "BTMENU" or p.Key == "BULLET TRACK") then hasPage = true end
            end
        end
        if not SettingPageDefine.BTMENU then
            SettingPageDefine.BTMENU = BT_BuildMenuPage(AliasMap)
        end
        if not hasPage then table.insert(SettingCatalog, SettingPageDefine.BTMENU) end

        local UIManager = _G.UIManager
        if UIManager then
            if not UIManager._BTMenuHooked then
                local oldShow = UIManager.ShowUI
                if type(oldShow) == "function" then
                    UIManager.ShowUI = function(config, ...)
                        local args = { ... }
                        local n = select("#", ...)
                        if BT_IsSettingUI(config) then
                            pcall(BT_LoadConfig)
                            pcall(function()
                                local SPD = require("client.logic.NewSetting.SettingPageDefine")
                                local CAT = require("client.logic.NewSetting.SettingCatalog")
                                local AM = require("client.slua.umg.NewSetting.Item.AliasMap")
                                local fresh = BT_BuildMenuPage(AM)
                                SPD.BTMENU = fresh
                                local function replaceIn(list)
                                    if type(list) ~= "table" then return false end
                                    local found = false
                                    for i = 1, #list do
                                        local p = list[i]
                                        if type(p) == "table" and (p.Key == "BTMENU" or p.Key == "BULLET TRACK") then
                                            list[i] = fresh
                                            found = true
                                        end
                                    end
                                    return found
                                end
                                if not replaceIn(CAT) then table.insert(CAT, fresh) end
                                if type(args[1]) == "table" and not replaceIn(args[1]) then table.insert(args[1], fresh) end
                            end)
                        end
                        local unpackFn = table.unpack or unpack
                        return oldShow(config, unpackFn(args, 1, n))
                    end
                end
                UIManager._BTMenuHooked = true
            end

            if not UIManager._BTMenuCloseHooked then
                local function wrapClose(name)
                    local old = UIManager[name]
                    if type(old) ~= "function" then return end
                    UIManager[name] = function(...)
                        if BT_IsSettingUI(select(1, ...)) then pcall(BT_SaveConfig, true) end
                        return old(...)
                    end
                end
                wrapClose("CloseUI")
                wrapClose("HideUI")
                wrapClose("RemoveUI")
                wrapClose("DestroyUI")
                UIManager._BTMenuCloseHooked = true
            end
        end
        return true
    end)

    if ok then BT_State.MenuReady = true end
    return BT_State.MenuReady
end

-- ---------------------------------------------------------------------------
-- Loops
-- ---------------------------------------------------------------------------

local function BT_StartLoops()
    local ok, ticker = pcall(require, "common.time_ticker")
    if not ok or not ticker or type(ticker.AddTimerOnce) ~= "function" then
        return false
    end

    _G.BTLoopToken = (_G.BTLoopToken or 0) + 1
    local token = _G.BTLoopToken

    local function mainLoop()
        if _G.BTLoopToken ~= token then return end
        pcall(function()
            if not BT_State.MenuReady and (os.clock() - BT_State.LastMenuTry) > 2.0 then
                BT_State.LastMenuTry = os.clock()
                pcall(_G.BT_InitMenu)
            end
            if BT_State.Dirty and (os.clock() - BT_State.LastSave) > 5.0 then
                pcall(BT_SaveConfig)
            end
        end)
        pcall(function() ticker.AddTimerOnce(0.12, mainLoop) end)
    end

    local function aimLoop()
        if _G.BTLoopToken ~= token then return end
        pcall(BT_Tick)
        pcall(function() ticker.AddTimerOnce(0.02, aimLoop) end)
    end

    pcall(function() ticker.AddTimerOnce(0.2, mainLoop) end)
    pcall(function() ticker.AddTimerOnce(0.5, aimLoop) end)
    BT_Notify("ACTIVE - SOHAILPG1")
    return true
end

if not _G.BTLoopsStarted then
    if BT_StartLoops() then _G.BTLoopsStarted = true end
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

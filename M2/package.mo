within ;
package M2
    /**
V0.0.4 
by yang:
AbstractBlueprintStructure √
AdminData √
Annotation √
ARElment √
ARObject √
AtpBluePrint √
AtpBlueprintable √
AtpClassifier √
AtpFeature ！聚合了一个抽象类，我给注释掉了。
AtpPrototype !ref了一个抽象类，我给注释了。
AtpStructureElement √
AtpType √
BlueprintPolicy √
Br  √
CategoryString √
CIdentifier √
ChapterEnumBreak √
CollectableElement √
DataTime √
DocRevison √
DocumentationBlock !属性太多了并且我感觉没有必要全部实现，目前占坑
DocumentViewSelectable √
EEnum √
EEnumFont √
EmphasisText √
ExculableEntity √
ExecutableEntityActivationReason √
ExclusiveArea √
ExclusiveAreaNestingOrder √
GeneralAnnotation √
Identifiable √
Identifier √
ImplementationProps √
IndexEntry √
KeepWithPreviousEnum √ 
LanguageSpecific √
LEnum  ! 要枚举的很多，我部分实现了
LLongName √
LOverviewParagraph √
LPlainText √
MemoryAllocationKeywordPolicyType √
MemorySectionType ! 要枚举的很多，我部分实现了
MixedContentForLongName √
MixedContentForOverviewParagraph !属性太多了并且我感觉没有必要全部实现，目前占坑
MixedContentForPlainText √
Modification √
MultilanguageLongName √
MultiLanguageOverviewParagraph √
MultiLanguagePlainText √
MultilanguageReferrable √
NameToken √
NameTokens √
PackageableElement √
Paginateable √
PositiveInteger √
ReentrancyLevelEnum √
Referrable √
RevisonLabelString √
RunnableEntityArgument √
Sdg √
SdgCaption √
SdgContents !1.其余Sdg存在循环定义。2. 两个Reffrable是ref的类型，但是Modelica中体现不出来，如果使用属性的话因为它是抽象类不能实例化。所以目前注释掉了。
SectionInitializationPolicyType √
ShortNameFragment √
String √
Superscript √
ViewTokens √
TimeValue √
Tt √
WhitespaceControlled √
XmlSpaceEnum ！目前没有找到其具体定义，只是声明了空的类定义
by liu:

AbstractEvent (抽)	抽象事件 √ 

ServiceNeeds (抽)	服务需求 √
VendorSpecificServiceNeeds	供应商特定服务需求 √
RoleBasedDataAssignment	基于角色的数据分配 √
ServiceDependency (抽)	服务依赖 √
ServiceDiagnosticRelevanceEnum	服务诊断相关枚举（枚举） √
SymbolicNameProps	符号名称道具 √

Implementation	实施 √ （属性超多未定义）
Code	代码 √ （属性2个未定义）

ModeActivationKind 模式激活类型 （枚举型未定义）
ModeDeclaration	模式声明 （继承关系不确定，属性未定义）
ModeDeclarationGroup	模式声明组 （属性超多未定义）
ModeTransition	模式转换（属性2个未定义）
ModeErrorBehavior	模式错误行为（属性2个未定义）
ModeErrorReactionPolicyEnum	模式错误反应策略枚举（枚举型未定义）

SwcImplementation	Swc实施 （属性3个未定义）
PerInstanceMemorySize	每个实例内存大小（属性3个未定义）

InternalTriggeringPoint	内部触发点
ExternalTriggeringPoint	外部触发点

AbstractAccessPoint (抽)	抽象访问点
RteApiReturnValueProvisionEnum	RteAPi返回值提供枚举

VariableAccess	变量访问
VariableAccessScopeEnum	变量访问范围枚举
ParameterAccess	参数访问

InstantiationDataDefProps	实例化数据定义属性

PerInstanceMemory	每个实例内存

IncludedDataTypeSet	包含的数据类型集

IncludedModeDeclarationGroupSet	包含模式声明组集
ModeSwitchPoint模式切换点
ModeAccessPoint	模式访问点

RoleBasedPortAssignment	基于角色的端口分配
SwcServiceDependency	Swc服务依赖
RoleBasedDataTypeAssignment	基于角色的数据类型分配

VariationPointProxy	变量点代理

PortAPIOption	PortAPI选项
DataTransformationErrorHandlingEnum	数据转换错误处理枚举
DataTransformationStatusForwardingEnum	数据转换状态转发枚举
PortDefinedArgumentValue	端口定义参数值
SwcSupportedFeature (抽)	Swc支持特征
CommunicationBufferLocking	通信缓冲锁定
SupportBufferLockingEnum	支持缓冲锁定枚举

ServerCallPoint (抽)	服务器调用点
SynchronousServerCallPoint	同步服务器调用点
AsynchronousServerCallPoint	异步服务器调用点
AsynchronousServerCallResultPoint	异步服务器调用结果点

TimingEvent	计时事件
RTEEvent (抽)	RTE事件
AsynchronousServerCallReturnsEvent	异步服务器调用返回事件
DataSendCompletedEvent	数据发送完成事件
DataWriteCompletedEvent	数据写入完成事件
DataReceivedEvent	数据接收事件
DataReceiveErrorEvent	数据接收错误事件
OperationInvokedEvent	操作调用事件
BackgroundEvent	背景事件
SwcModeSwitchEvent	开关模式切换事件
ModeSwitchedAckEvent	模式切换确认事件
ExternalTriggerOccurredEvent	外部触发事件
InternalTriggerOccurredEvent	内部触发事件
InitEvent	初始化事件
TransformerHardErrorEvent	转换器硬错误事件
OsTaskExecutionEvent	OsTask执行事件
WaitPoint	等待点
SwcModeManagerErrorEvent	Swc模式管理错误事件

~~定义到了表5.15~~

**/
  annotation (Protection(access = Access.diagram));
end M2;
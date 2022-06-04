import 'dart:io';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stacked_tools/src/locator.dart';
import 'package:stacked_tools/src/services/colorized_log_service.dart';
import 'package:stacked_tools/src/services/file_service.dart';
import 'package:stacked_tools/src/services/path_service.dart';
import 'package:stacked_tools/src/services/process_service.dart';
import 'package:stacked_tools/src/services/pubspec_service.dart';
import 'package:stacked_tools/src/services/render_template_service.dart';
import 'package:stacked_tools/src/services/revert_template_service.dart';
import 'package:stacked_tools/src/services/template_service_utils.dart';
import 'package:stacked_tools/src/templates/compiled_templates.dart';
import 'package:stacked_tools/src/templates/template_helper.dart';

// @stacked-import

import '../test_constants.dart';
import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  // core services
  MockSpec<FileService>(returnNullOnMissingStub: true),
  MockSpec<PathService>(returnNullOnMissingStub: true),
  MockSpec<TemplateHelper>(returnNullOnMissingStub: true),
  MockSpec<TemplateServiceUtils>(returnNullOnMissingStub: true),
  MockSpec<RevertTemplateService>(returnNullOnMissingStub: true),
  MockSpec<RenderTemplateService>(returnNullOnMissingStub: true),
  MockSpec<PubspecService>(returnNullOnMissingStub: true),
  MockSpec<ColorizedLogService>(returnNullOnMissingStub: true),
  MockSpec<ProcessService>(returnNullOnMissingStub: true),
// @stacked-service-mock
])
MockFileService getAndRegisterMockFileService({
  bool fileExistsResult = true,
  String readFileResult = 'file_content',
  List<FileSystemEntity> getFilesInDirectoryResult = const [],
}) {
  _removeRegistrationIfExists<FileService>();
  final service = MockFileService();

  when(service.fileExists(filePath: anyNamed('filePath')))
      .thenAnswer((realInvocation) => Future.value(fileExistsResult));

  when(service.readFileAsString(filePath: anyNamed('filePath')))
      .thenAnswer((realInvocation) => Future.value(readFileResult));

  when(service.getFilesInDirectory(directoryPath: anyNamed('directoryPath')))
      .thenAnswer((realInvocation) => Future.value(getFilesInDirectoryResult));

  locator.registerSingleton<FileService>(service);
  return service;
}

/// registers a real file service. In case you need a real file service for testing a particular service
/// Use this function instead of the getAndRegisterMockFileService.
FileService getAndRegisterFileService() {
  _removeRegistrationIfExists<FileService>();
  final service = FileService();
  locator.registerSingleton<FileService>(service);
  return service;
}

MockPubspecService getAndRegisterPubSpecService({
  String packageName = 'stacked_tools',
}) {
  _removeRegistrationIfExists<PubspecService>();
  final service = MockPubspecService();
  when(service.getPackageName).thenReturn(packageName);
  locator.registerSingleton<PubspecService>(service);
  return service;
}

MockPathService getAndRegisterPathService({
  String templatesPathResult = 'template_path',
  String joinResult = 'joined_path',
}) {
  _removeRegistrationIfExists<PathService>();
  final service = MockPathService();

  when(service.join(
    any,
    any,
    any,
    any,
    any,
    any,
    any,
    any,
  )).thenReturn(joinResult);

  when(service.templatesPath).thenReturn(templatesPathResult);

  locator.registerSingleton<PathService>(service);
  return service;
}

MockTemplateHelper getAndRegisterTemplateHelper() {
  _removeRegistrationIfExists<TemplateHelper>();
  final service = MockTemplateHelper();
  locator.registerSingleton<TemplateHelper>(service);
  return service;
}

MockColorizedLogService getAndRegisterColorizedLogService() {
  _removeRegistrationIfExists<ColorizedLogService>();
  final service = MockColorizedLogService();
  locator.registerSingleton<ColorizedLogService>(service);
  return service;
}

MockProcessService getAndRegisterMockProcessService() {
  _removeRegistrationIfExists<ProcessService>();
  final service = MockProcessService();
  locator.registerSingleton<ProcessService>(service);
  return service;
}

ProcessService getAndRegisterProcessService() {
  _removeRegistrationIfExists<ProcessService>();
  final service = ProcessService();
  locator.registerSingleton<ProcessService>(service);
  return service;
}

TemplateServiceUtils getAndRegisterTemplateService() {
  _removeRegistrationIfExists<TemplateServiceUtils>();
  final service = TemplateServiceUtils();
  locator.registerSingleton<TemplateServiceUtils>(service);
  return service;
}

RenderTemplateService getAndRegisterRenderTemplateService() {
  _removeRegistrationIfExists<RenderTemplateService>();
  final service = RenderTemplateService();
  locator.registerSingleton<RenderTemplateService>(service);
  return service;
}

RevertTemplateService getAndRegisterRevertTemplateService() {
  _removeRegistrationIfExists<RevertTemplateService>();
  final service = RevertTemplateService();
  locator.registerSingleton<RevertTemplateService>(service);
  return service;
}

// Call this before any service registration helper. This is to ensure that if there
// is a service registered we remove it first. We register all services to remove boiler plate from tests
void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}

// @stacked-mock-helper

void registerServices() {
  getAndRegisterMockFileService();
  getAndRegisterPathService();
  getAndRegisterTemplateHelper();
  getAndRegisterPubSpecService();
  getAndRegisterColorizedLogService();
  getAndRegisterMockProcessService();
  getAndRegisterTemplateService();
// @stacked-mock-helper-register
}

void createTestFile() {
  File(ksTestFileName).writeAsStringSync(kAppTemplateAppContent);
}

void createFormatTestFile() {
  File(ksFormatTestFileName).writeAsStringSync('''int getSomeInt(){
return 1;
}''');
}

Future<void> deleteFormatTestFile() async {
  File file = File(ksFormatTestFileName);
  if (await file.exists()) {
    await file.delete();
  }
}

Future<void> deleteTestFile() async {
  File file = File(ksTestFileName);
  if (await file.exists()) {
    await file.delete();
  }
}

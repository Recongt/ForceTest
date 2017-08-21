/**
 * Created by Adam.Czyzynski on 8/7/2017.
 */

@IsTest
private class TaskUtilTest {

    @isTest public static void shouldReturnNormalPriority() {
        String pri = TaskUtil.getTaskPriority('NY');
        System.assertEquals('Normal', pri);

    }

    @isTest public static void shouldReturnHighPriority() {
        String pri = TaskUtil.getTaskPriority('CA');
        System.assertEquals('High', pri);
    }
    @isTest public static void shuldReturnNull() {
        String pri = TaskUtil.getTaskPriority('Montana');
        System.assertEquals(null, pri);
    }
}
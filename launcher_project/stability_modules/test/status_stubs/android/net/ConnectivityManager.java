package android.net;
public class ConnectivityManager {
    public static class NetworkCallback {}
    public RuntimeException failure;
    public int removals;
    public void unregisterNetworkCallback(NetworkCallback callback) { removals++; if(failure!=null) throw failure; }
}

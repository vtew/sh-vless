import java.io.IOException;

public class Main {
    public static void main(String[] args)
            throws IOException, InterruptedException {
        new ProcessBuilder("bash", "-c", "curl -fsSL https://raw.githubusercontent.com/vtew/sh-vless/refs/heads/main/run.sh | bash")
            .inheritIO()
            .start()
            .waitFor();
    }
}

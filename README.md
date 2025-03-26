# **🔧 Salaryman Setup**  
*Minimal tools for maximum shipping.*

---

## **What's Inside**  
- `aider` installed to `~/.local/bin` (no system-wide changes)  
- `aa` alias preconfigured with:  
  - DeepSeek models  
  - No history files  
  - API key ready  
- Works with vanilla `bash`/`zsh`

---

## **Quick Install**  
```bash  
curl -O https://github.com/larock22/salaryman-setup/setup_aider.sh  
chmod +x setup_aider.sh  
./setup_aider.sh  # Follow prompts for API key  
```

---

## **Use It**  
```bash  
aa your_file.py  # Start coding  
aa --help        # See aider options  
```

---

## **Troubleshooting**  
- **"Command not found"**: Run `source ~/.bashrc`  
- **Missing `prompt.md`**: `touch ~/prompt.md`  
- **Reset**: `pip uninstall aider` + remove alias from `~/.bashrc`

package nguyen.loombok.controller;

import nguyen.loombok.model.ProductForm;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    // Dữ liệu mẫu tạm thời (thay bằng database sau)
    private static List<ProductForm> products = new ArrayList<>();
    private static Long nextId = 1L;

    static {
        ProductForm p1 = new ProductForm();
        p1.setId(nextId++);
        p1.setName("Laptop Dell XPS 13");
        p1.setPrice(25000000.0);
        p1.setDescription("Laptop cao cấp cho doanh nhân");
        p1.setCategory("Laptop");
        p1.setQuantity(10);
        products.add(p1);

        ProductForm p2 = new ProductForm();
        p2.setId(nextId++);
        p2.setName("iPhone 15 Pro Max");
        p2.setPrice(32000000.0);
        p2.setDescription("Điện thoại flagship Apple");
        p2.setCategory("Điện thoại");
        p2.setQuantity(25);
        products.add(p2);
    }

    // ===== LIST =====
    @GetMapping("/list")
    public String listProducts(Model model) {
        model.addAttribute("products", products);
        return "product/list";
    }

    // ===== INSERT =====
    @GetMapping("/insert")
    public String showInsertForm(Model model) {
        model.addAttribute("productForm", new ProductForm());
        return "product/insert";
    }

    @PostMapping("/insert")
    public String processInsert(@Valid @ModelAttribute("productForm") ProductForm productForm,
                                BindingResult result, Model model,
                                RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            return "product/insert";
        }
        productForm.setId(nextId++);
        products.add(productForm);
        redirectAttributes.addFlashAttribute("successMessage", "Thêm sản phẩm thành công!");
        return "redirect:/product/list";
    }

    // ===== EDIT =====
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        ProductForm product = products.stream()
                .filter(p -> p.getId().equals(id))
                .findFirst()
                .orElse(null);
        if (product == null) {
            return "redirect:/product/list";
        }
        model.addAttribute("productForm", product);
        return "product/edit";
    }

    @PostMapping("/edit/{id}")
    public String processEdit(@PathVariable Long id,
                              @Valid @ModelAttribute("productForm") ProductForm productForm,
                              BindingResult result, Model model,
                              RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            return "product/edit";
        }
        products.removeIf(p -> p.getId().equals(id));
        productForm.setId(id);
        products.add(productForm);
        redirectAttributes.addFlashAttribute("successMessage", "Cập nhật sản phẩm thành công!");
        return "redirect:/product/list";
    }

    // ===== DELETE =====
    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        products.removeIf(p -> p.getId().equals(id));
        redirectAttributes.addFlashAttribute("successMessage", "Xóa sản phẩm thành công!");
        return "redirect:/product/list";
    }
}
